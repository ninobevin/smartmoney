@extends('main.main')
@section('pagetitle')
@endsection
@section('content')
<div class='row'>
	
	<div class='col-md-8'>
		<div class="box box-primary">


		
				<div class="box-header with-border">
					<i class="fa fa-user-o"></i>	 Customer Information
				</div>
			
			<div class="box-body">

				<form id='formEditCustomer' method="get">
					<div class="row">
						
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
							<input type="text" data-provide="typeahead"  id="searchAddress" value="{{ $customer->address->getAddress() }}" style="text-transform:uppercase"  class="form-control"  placeholder="Address">
							<input type="hidden" id='quick_address' name='address' >
						</fieldset>
					</div>
					<div class="row">
						<div class="form-group col-md-8" id='quickadd_response_save'></div>
					</div>
				</form>
			</div>
			
		</div>
		
		
		
		
		
	</div>
	
</div>

<script type="text/javascript">
	

</script>
@endsection