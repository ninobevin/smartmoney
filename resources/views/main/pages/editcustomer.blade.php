@extends('main.main')
@section('pagetitle')
@endsection

@section('content')
@include('main.modals.confirmSaveEditCustomer')





<div class='row'>
	
	<div class='col-md-8'>
		<div class="box box-primary">


		
				<div class="box-header with-border">
					<i class="fa fa-user-o"></i>	 Customer Information
				</div>
			
			<div class="box-body">

				<form id='formEditCustomer' method="post" action="{{ route('customer.saveEdit') }}">
					<div class="row">
						<input type="hidden" name="id" value="{{ $customer->cust_id }}">
						
						<fieldset class="form-group col-md-5">
							<span class="label label-default">Firstname</span>
							<input type="text" name="firstname"  style="text-transform:uppercase" value="{{ $customer->fname }}"  class="form-control" placeholder="Firstname">
							
						</fieldset>
						<fieldset class="form-group col-md-2">
							<span class="label label-default">M.I.</span>
							<input type="text" name="middleinitial"   style="text-transform:uppercase" value="{{ $customer->mname }}" maxlength="1" required="required" class="form-control"  placeholder="M.I.">
						</fieldset>
						<fieldset class="form-group col-md-5">
							<span class="label label-default">Lastname</span>
							<input type="text"   name="lastname"  style="text-transform:uppercase" value="{{ $customer->lastname }}" required="required" class="form-control" placeholder="Lastname">
						</fieldset>
					</div>
					<div class="row">
						<fieldset class="form-group col-md-8">
							<span class="label label-default">Address</span>
							<input type="text" data-provide="typeahead"  id="searchAddress" value="{{ $customer->address?$customer->address->getAddress():'' }}" style="text-transform:uppercase"  class="form-control"  placeholder="Address">
							<input type="hidden"  value="{{ $customer->loc_id }}" id='quick_address' name='address' >
						</fieldset>
						<fieldset class="col-md-4">
							<span class="label label-default" >Date of Birth</span>
							<input type="date" class="form-control" value="{{ $customer->dob }}" name="dob">
						</fieldset>


						
					</div>
					<div class="row">
						<fieldset class="form-group col-md-4">
							<span class="label label-default">Contact</span>
							<input type="text" name="contact"   style="text-transform:uppercase" value="{{ $customer->contact }}" required="required" class="form-control"  placeholder="Contact">
							
						</fieldset>
						

						<fieldset class="form-group col-md-4">
							<span class="label label-default">Gender</span>
							<select  name="gender" class="form-control">
								@if($customer->gender == '0')
									<option value="0" selected>Female</option>
									<option value="1" >Male</option>
								@elseif($customer->gender == '1')
									<option value="0" >Female</option>
									<option value="1" selected>Male</option>
								@else
									<option disabled selected >--Choose Gender--</option>
									<option value="1" >Male</option>
									<option value="0" >Female</option>

								@endif
							</select>
							
						</fieldset>
					</div>
					<div class="row">
						<div class="col-sm-4">
							
					    <video  style="display: none" width="500" height="500" class="img-responsive" autoplay id="videoElement">	  				     
					    </video>

					    <canvas class="img-responsive" width="500" height="500" id="canvas" style="display: none"></canvas>
					    <div id="pic_container">

									<img  name="imgtag"  class="img-responsive" width="500" height="500" id="imgtag"
										  

										@if(!Storage::has('public/customer/'.$customer->cust_id.'.jpeg'))

											src="{{ asset('dist/img/default-50x50.gif') }}"

										@else


               								 src="{!! asset('storage/customer/' .$customer->cust_id.'.jpeg') !!}"
										
										@endif
									alt=""></img>

										
					    </div>

									
					    <input type="hidden"  name="imgpic"  id="imgpic">	
					</div>
					<div class="col-sm-6">
						  					
						 <div class="form-group">						  						
						  		<input type="file"  id="fileselect" name="fileselect"  accept="image/*" capture="camera" >

						 </div>
						 <div class="form-group">
						  						
					  		<button type="button" onclick="useCam()" id="usecam" class="btn btn-primary">
						  				<i class="fa fa-power-off"></i> Turn on/off Camera
						  		</button>						  						
						 </div>

						<div class="form-group">
												  		
							<button type="button" id="save" class="btn btn-primary"><i class="fa fa-camera"></i>  Save</button>

						</div>	  					
								  					
					</div>
					</div>

				
					{{ csrf_field() }}
					<div class="box-footer">
						<div class="row">
							<div class="form-group col-md-10" id='saveEditCustomer_response'>
								@if(isset($message))
									<strong class="text-success">{{ $message }}</strong>
								@endif
							</div>
							<button class="btn btn-primary pull-right col-md-2" value="formEditCustomer" id='btnSave' type="button" data-toggle="modal" data-target="#confirmSaveEditCustomer">Save</button>
						</div>
						
					</div>
					
				</form>
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
	    w =   canvas.width;
	    h = canvas.height;
	     // alert("Trigerred");



	},false);

	function draw(v,c,w,h) {

	    if(v.paused || v.ended) return false; // if no video, exit here

	    context.drawImage(v,0,0,w,h); // draw video feed to canvas
	   
	   var uri = canvas.toDataURL("image/jpeg"); // convert canvas to data URI
	   
	 


	   //console.log(uri); // uncomment line to log URI for testing
	   
	   imgtag.src = uri; // add URI to IMG tag src

	   document.getElementById('imgpic').value = uri;
	   

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

@section('scripts')

<script type="text/javascript">
	
	  $("#searchAddress" ).autocomplete({
      source:function(request, response) {
        $.getJSON("{{ route('searchAddress') }}", {term: request.term},
          response);
      },
      select: function(str,ui){

     	$.get("{{ route('searchAddressView') }}",{term :ui.item.value},function(data){

      			$("#quick_address").val(data);
      	
      	});
      	//console.log(str);

	}});

	 $('#btnSave').click(function(){

	 		$('#formtosubmit').val(this.value);

	 });
	$('#btnSubmit').click(function(){

	 		var form =	$('#formtosubmit').val();


	 		var id  = $("input[name=id]").val();
	 		var firstname  = $("input[name=firstname]").val();
	 		var middleinitial  = $("input[name=middleinitial]").val();
	 		var lastname  = $("input[name=lastname]").val();

	 	

	 		var pics = document.getElementById("imgtag").src;

	 		
		

			var imgtags =  document.getElementById("imgtag").src.split(",")[1];
	 	
	 		
	 		$.post("{{ route('customer.quicksearch') }}",{
	 			imgtags:imgtags,
	 			firstname : firstname,id:id,middleinitial:middleinitial,lastname:lastname },function(data){

	 				
	 				if(data >= 1)

	 				$("#saveEditCustomer_response").html("<strong class='text-danger'>Name already taken.</strong>");

	 				else

	 				$('#' + form).submit();
	 				
	 		});

	 		
	 		


		 	//

	 });

</script>
@endsection

@endsection