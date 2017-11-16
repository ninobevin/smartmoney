@extends('main.main')

@section('pagetitle')

@endsection

@include('main.modals.confirmForceFilter')
@section('content')




	<div class="col-md-8">




			<div class="box box-primary">
					
				<div class="box-header">
					<div class="box-title">
						Filter Wizard
					</div>
					
				</div>

				<div class="box-body">

					@if ($errors->any())
					    
					        <ul class="text-danger">
					            @foreach ($errors->all() as $error)
					                <li>{{ $error }}</li>
					            @endforeach
					        </ul>
					   
					@endif

					@if (\Session::has('success'))
					    <div class="alert alert-success">
					        {!! \Session::get('success') !!}
					      
					    </div>
					@endif
					
					<p class="text-warning">
						Please fill in the necessary data, any input will be verified based on the
						actual sms. 
					</p>

					<div class="box-title">
						SMS
					</div>

					<div class="text-success">
						{{ $sms->body }}
					</div>

					<hr>

					<div class="row">
						
						<form method="post" name='formForceFilter' action="{{ url('/search/forceFilterStore/{'.encrypt($sms->id).'}') }}" id='formForceFilter'>

						<input type="hidden" name="sms" value="{{ $sms->body }}">
						
						<div class="col-md-3">
							
							<fieldset class="form-group">
								<span class="label label-default">
									Amount
								</span>
								<input type="text" name="amount" class="form-control" >
							</fieldset>	


						</div>
							<div class="col-md-3">
							
							<fieldset class="form-group">
								<span class="label label-default">
									Reference
								</span>
								<input type="text" class="form-control" name="ref_no">
							</fieldset>	


							</div>
							<div class="col-md-3">
							

							<fieldset class="form-group">
								
							

							<span class="label label-default">Type</span>
							<select  name="direction" class="form-control">
								<option disabled selected >--Choose Type--</option>
								
								<option value="1">Incomming</option>
								<option value="0">Outgoing</option>

							</select>

							</fieldset>


							</div>
							<div class="col-md-3">
							

							<fieldset class="form-group">
								
							

							<span class="label label-default">Account</span>
							<select  name="account" class="form-control">
								<option disabled selected >--Choose Acct--</option>
								
								@foreach(App\Account::all() as $account)

									<option value="{{ $account->account_no }}">
										{{ $account->name }}
									</option>

								@endforeach

							</select>

							</fieldset>


							</div>
							<div class="col-md-3">
							

							<fieldset class="form-group">
								
							

							<span class="label label-default">Partnership</span>
							<select  name="partnership" class="form-control">
								<option disabled selected >-- No Selected --</option>
								
								<option value="1">Authorized</option>
								<option value="0">Non Authorized</option>
								
							</select>

							</fieldset>


							</div>

							
							{{ csrf_field() }}
						</form>

					</div>

				</div>
				<div class="box-footer">
					
					<button id="btnShowConfirm" class="btn btn-primary pull-right" data-toggle='modal' data-target='#confirmForceFilter'>Save</button>

				</div>

			</div>




	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
</div>
		

	

@section('scripts')

<script type="text/javascript" src="{{ asset('plugins/iCheck/icheck.min.js')}}">
	
</script>

<script type="text/javascript">
	

	//iCheck for checkbox and radio inputs
	$('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
	  checkboxClass: 'icheckbox_minimal-blue',
	  radioClass   : 'iradio_minimal-blue'
	});
	//Red color scheme for iCheck
	$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
	  checkboxClass: 'icheckbox_minimal-red',
	  radioClass   : 'iradio_minimal-red'
	});
	//Flat red color scheme for iCheck
	$('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	  checkboxClass: 'icheckbox_flat-green',
	  radioClass   : 'iradio_flat-green'
	});



	$("#btnSubmit").click(function(){


		

		 $("#formForceFilter").submit();

	});


</script>
@endsection




@endsection