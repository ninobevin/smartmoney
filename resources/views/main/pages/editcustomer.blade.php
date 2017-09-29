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
				
					{{ csrf_field() }}
					<div class="box-footer">
						<div class="row">
							<div class="form-group col-md-10" id='saveEditCustomer_response'>{{ @$response[0] }}</div>
							<button class="btn btn-primary pull-right col-md-2" value="formEditCustomer" id='btnSave' type="button" data-toggle="modal" data-target="#confirmSaveEditCustomer">Save</button>
						</div>
						
					</div>
					
				</form>
			</div>
			
		</div>
		
		
		
		
		
	</div>
	
</div>


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

	 		$('#' + form).submit();

	 });

</script>
@endsection

@endsection