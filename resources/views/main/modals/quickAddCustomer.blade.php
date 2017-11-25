	  <div class="modal fade modal-default" id="quickAddCustomer" role="dialog">
	  	<div class="modal-dialog">

	  		<!-- Modal content-->
	  		<div class="modal-content">
	  			<div class="modal-header">
	  				<button type="button" class="close" data-dismiss="modal">&times;</button>
	  				<h4 class="modal-title"><i class="fa fa-user"></i> Quick Add Customer</h4>
	  			</div>
	  			<div class="modal-body">
	  			<form id='formAddCustomer'>
	  			<div class="row">
	  			
	  				<fieldset class="form-group col-md-5">
	  					<span class="label label-default">Firstname</span>
	  					<input type="text" name="firstname"  style="text-transform:uppercase"  class="form-control" placeholder="Firstname">
	  				</fieldset>
	  				<fieldset class="form-group col-md-2">
	  					<span class="label label-default">M.I.</span>
	  					<input type="text" name="middleinitial"   style="text-transform:uppercase"  maxlength="1" required="required" class="form-control"  placeholder="M.I.">
	  				</fieldset>
	  				<fieldset class="form-group col-md-5">
	  					<span class="label label-default">Lastname</span>
	  					<input type="text"   name="lastname"  style="text-transform:uppercase"  required="required" class="form-control" placeholder="Lastname">
	  				</fieldset>


	  			</div>
	  			<div class="row">
	  				<fieldset class="form-group col-md-8">
	  					<span class="label label-default">Address</span>
	  					<input type="text" data-provide="typeahead"  id="searchAddress" style="text-transform:uppercase"  class="form-control"  placeholder="Address">
	  					<input type="hidden" id='quick_address' name='address' >
	  				</fieldset>

	  			</div>
	  			<div class="row">
	  				<div class="col-sm-6">
	  					
	  					<input type="file"  id="fileselect" name="fileselect"  accept="image/*" capture="camera" >

	  					<input type="file" name="picpic" />
	  					
	  		
	  						<button type="button" id="save" class="btn btn-primary"><i class="fa fa-camera"></i>  Save</button>


	  				

	  					
	  						<button type="button" onclick="useCam()" id="usecam" class="btn btn-primary">
	  							<i class="fa fa-power-off"></i> Turn on/off Camera
	  						</button>
	  				
	  					
	  					 

	  					
	  				</div>
	  				<div class="col-sm-6" style="background-color: gray;">
	  				
	  						
	  						    <video style="display: none" width="100%" height="100%" autoplay id="videoElement">	  				     
	  						    </video>

	  						<canvas width="100%" height="100%" id="canvas" style="display: none"></canvas>
	  						<img width="100%" name="imgtag" height="100%" id="imgtag"
	  						 src="" alt=""></img>

	  						<input type="hidden"  name="imgpic"  id="imgpic">	 



	  					    
	  				</div>
	  		
	  				
	  				
	  			</div>
	  			<div class="row">

	  				{{ csrf_field() }}
	  				<div class="form-group col-md-8" id='quickadd_response_save'></div>
	  			</div>


	  			</form>
	  				
	  			</div>
	  			<div class="modal-footer">
	  				
	  				<button type="button" id="saveCustomer" class="btn btn-primary">Save</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>	  				
	  			</div>
	  		</div>

	  	</div>
	  </div>

	  <script type="text/javascript">
	  	var video = document.querySelector("#videoElement");

	  	// check for getUserMedia support
	  	navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;
	  	 
	  	
	  	function useCam(){

	  		var x = document.getElementById("videoElement");
	  		var y = document.getElementById("imgtag");

	  		    x.style.display = "block";
	  		    y.style.display = "none";



	  		if (navigator.getUserMedia) {       
	  		    // get webcam feed if available
	  		    navigator.getUserMedia({video: true}, handleVideo, videoError);
	  		}
	  		 

	  	}
	  	
	  	function handleVideo(stream) {
	  	    // if found attach feed to video element
	  	    video.src = window.URL.createObjectURL(stream);
	  	}
	  	 
	  	function videoError(e) {
	  	    // no webcam found - do something
	  	}
	  	var v,canvas,context,w,h;
	  	var imgtag = document.getElementById('imgtag'); // get reference to img tag
	  	var sel = document.getElementById('fileselect'); // get reference to file select input element

	  	document.addEventListener('DOMContentLoaded', function(){
	  	    // when DOM loaded, get canvas 2D context and store width and height of element
	  	    v = document.getElementById('videoElement');
	  	    canvas = document.getElementById('canvas');
	  	    context = canvas.getContext('2d');
	  	    w = canvas.width;
	  	    h = canvas.height;

	  	},false);

	  	function draw(v,c,w,h) {

	  	    if(v.paused || v.ended) return false; // if no video, exit here

	  	    context.drawImage(v,0,0,w,h); // draw video feed to canvas
	  	   
	  	   var uri = canvas.toDataURL("image/png"); // convert canvas to data URI
	  	   


	  	   //console.log(uri); // uncomment line to log URI for testing
	  	   
	  	   imgtag.src = uri; // add URI to IMG tag src

	  	  

	  	   //console.log(dataURItoBlob(uri,'image/png')); 
	  	}

	  	document.getElementById('save').addEventListener('click',function(e){


	  	    	
	  	    hideOrView();

	  	    draw(v,context,w,h); // when save button is clicked, draw video feed to canvas
	  	    
	  	});

	  	// for iOS 

	  	// create file reader
	  	var fr;

	  	sel.addEventListener('change',function(e){
	  	    var f = sel.files[0]; // get selected file (camera capture)
	  	    
	  	    fr = new FileReader();
	  	    fr.onload = receivedData; // add onload event

	  	    fr.readAsDataURL(f); // get captured image as data URI
	  	})

	  	function receivedData() {           
	  	    // readAsDataURL is finished - add URI to IMG tag src
	  	    imgtag.src = fr.result;
	  	}
	  	function hideOrView() {
	  	    var x = document.getElementById("videoElement");
	  	    var y = document.getElementById("imgtag");

	  	        x.style.display = "none";
	  	        y.style.display = "block";
	  	    
	  	}
	  	function dataURItoBlob(dataURI, type) {
	  	    // convert base64 to raw binary data held in a string
	  	    var byteString = atob(dataURI.split(',')[1]);

	  	    // separate out the mime component
	  	    var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]

	  	    // write the bytes of the string to an ArrayBuffer
	  	    var ab = new ArrayBuffer(byteString.length);
	  	    var ia = new Uint8Array(ab);
	  	    for (var i = 0; i < byteString.length; i++) {
	  	        ia[i] = byteString.charCodeAt(i);
	  	    }

	  	    // write the ArrayBuffer to a blob, and you're done
	  	    var bb = new Blob([ab], { type: type });
	  	    return bb;
	  	}
	  </script>

@section('scriptsave')

	<script type="text/javascript">
			$('#saveCustomer').click(function(){

				/*

			var data = $('#formAddCustomer').serialize();

			var data_ex = $('#formAddCustomer').serializeArray();


			var fd = new FormData();

			//var toAppend =  document.getElementById("imgtag").src.split(",")[1];

			var toAppend = document.getElementById("fileselect").value;


			//data += "&pic_prof="+toAppend;

			$.each(data_ex,function(key,input){
			       fd.append(input.name,input.value);
			     //  fd.append("hehe","kkoool");

			    // console.log(input.name);
			 });

			 fd.append("fileselect",toAppend);

			// console.log(">>>>>>" + toAppend);


	

		    $.ajax({
			  url: "",
			  method: "POST",
			  data: fd
			   
			}).done(function(data){
				$("#quickadd_response_save").html(data);
			}).fail(function(){
				//console.log("failed");
			});

			
			$('[data-dismiss=modal]').on('click', function (e) {
			    var $t = $(this),
			        target = $t[0].href || $t.data("target") || $t.parents('.modal') || [];

			  $(target)
			    .find("input,textarea,select")
			       .val('')
			       .end()
			    .find("input[type=checkbox], input[type=radio]")
			       .prop("checked", "")
			       .end();
			});


		});
		*/

		var form =	$('#formtosubmit').val();


		
		var firstname  = $("input[name=firstname]").val();
		var middleinitial  = $("input[name=middleinitial]").val();
		var lastname  = $("input[name=lastname]").val();
		var fileselect  = $("input[name=fileselect]").val();

		var imgtags =  document.getElementById("imgtag").src.split(",")[1];



		var address = $("input[name=address]").val();

		$.post("{{ route('saveQuickAddCustomer') }}",{address:address,imgtags:imgtags,
			"_token": "{{ csrf_token() }}",fileselect:fileselect,firstname : firstname,middleinitial:middleinitial,lastname:lastname },function(data){

				$("#quickadd_response_save").html(data);
				console.log(data);
				
		});

	

	});	

	</script>
		

@endsection

	  