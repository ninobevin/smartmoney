@extends('main.main')

@section('pagetitle')

@endsection
@section('content')

<?php
	
	$appConfig = new App\library\Application;
	$branch_details = $appConfig->getBranch();


	$network_charge = new App\NetworkCharge();
	$agent_charge = new App\AgentCharge();

?>

<div class="row">
	<div class="col-md-8">

		<div class="box box-warning">
			
			<div class="box-header with-border">
				<span class="box-title">Send Verification</span> 
			</div>
			<div class="box-body">
				

			
					
						<form action="" method="get">

							

							<div class="row">
								
								<div class="col-md-4 col-md-offset-4">
										

									<span class="label label-default">SMS:</span>
									<br> 
									<p>
										<b>
										{{ $transaction->body_sms }}
										</b>
									</p>	
									<span class="label label-default">Reference:</span>
									<br>
									<b>{{ $transaction->ref_no }}</b>
									<br>
									<span class="label label-default">Amount:</span>
									<br>
									<b>{{ $transaction->amount }}</b>
									<br>
									<br>


									

								</div>
							</div>
							<div class="row">
								
								<div class="form-group col-md-4 col-md-offset-4">
								<span class="label label-default">Branch</span>
									<select name='branch_no' class="form-control">

							@if($branch_details->main == '1')
								@foreach(App\Branch::all() as $branch)
									@if(@$_REQUEST['branch_no'] == $branch->branch_no)
										<option selected value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
									@else
										<option value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
									@endif
								@endforeach
								
							
							@else
								<option value="{{ $branch_details->branch_no }}">{{ $branch_details->branch_name }}</option>
							@endif


									</select>

								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-4 col-md-offset-4">
									<label class="label label-default">Account</label>
									<select  name="account" class="form-control" required="required">
									  <option value="" disabled selected >--Choose Acct--</option>
									  
									  @if(!isset($transaction->account))
									    @foreach(App\Account::all() as $account)
									            
									        @if($account->account_no == $transaction->account)
									            <option selected value="{{ $account->account_no }}">
									            {{ $account->name }}
									            </option>
									        @else
									            <option  value="{{ $account->account_no }}">
									            {{ $account->name }}
									            </option>

									        @endif
									        

									    @endforeach
									  @else
									    <option selected value="{{ $transaction->account }}">
									    {{ $transaction->getAccount->name }}
									    </option>
									  @endif
									</select>
								</div>
							</div>

							<div class="row">
								
								<div class="form-group col-md-4 col-md-offset-4">
										
									<span class="label label-default">Pay-In</span>
									<input type="text" class="form-control" name="cash_amount" value="{{ $transaction->getCash() }}">	

								</div>
							</div>
							<input type="hidden" name="tran_id" value="{{ $transaction->tran_id }}">
							<div class="row">
								
								<div class="form-group col-md-4 col-md-offset-4">

									<button name="btn_verify" value="1" class="form-control btn btn-warning">Verify</button>

								</div>


							</div>


							
						</form>


			

				



			</div>

		</div>

	

	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
	
</div>
	

@section('scripts')




@endsection




@endsection