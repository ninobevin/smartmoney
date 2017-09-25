
			

		@extends('main.main')

@section('pagetitle')


@endsection
@section('content')












				<div class="box">
					<div class='box-title'>


					</div>
				</div>



	  			<form id='formAddCustomer' method="get">
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
	  				<div class="form-group col-md-8" id='quickadd_response_save'></div>
	  			</div>


	  			</form>
	  			
	  			
	  	

		
	 