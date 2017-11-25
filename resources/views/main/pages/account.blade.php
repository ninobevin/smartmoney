@extends('main.main')

@section('pagetitle')

@endsection
@section('content')


<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default no-print">
			<div class="panel-heading">
				<form class="form-inline" action="" method="get">
					<div class="form-group">
						<label for="date_from">From:</label>
						<input type="date" value="{{ @$_REQUEST['date_from']?$_REQUEST['date_from']:\Carbon\Carbon::now()->format('Y-m-d') }}" name="date_from" class="form-control">
					</div>
					<div class="form-group">
						<label for="date_to">To:</label>
						<input type="date" name='date_to' value="{{ @$_REQUEST['date_to']?$_REQUEST['date_to']:\Carbon\Carbon::now()->format('Y-m-d') }}" class="form-control">
					</div>
					
					<button type="submit" class="btn btn-warning btn-flat">Generate</button>
					<span class="text-primary pull-right"> <a data-toggle="collapse" href="#panel_filter">Show Columns</a> <i class="fa fa-arrow-down"></i></span>
				</form>
					
				</div>
				<div id="panel_filter" class="panel-collapse collapse">
					<div class="panel-body">
						
						
						<div class="row">
							@foreach(App\Transaction::getColumnNames() as $t => $k)
								<div class="form-group col-md-3">
									
									<label>
										<input type="checkbox" class="flat-red" checked>
									</label>
									{{ $k->Field }}
								</div>
							@endforeach
						</div>
					</div>
					
				</div>
			
			
		</div>
	</div>
</div>
		
		<div class="invoice">
		
				{{-- <div class="col-xs-12">
					<h2 class="page-header">
					<i class="fa fa-globe"></i> AdminLTE, Inc. 
					
					<small class="pull-right">
					<span class="text-primary">To </span>
					<i class="text-muted">
					{{ @$_REQUEST['date_to']?\Carbon\Carbon::parse($_REQUEST['date_to'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					</i>
					</small>
					
					<small class="pull-right" style="margin-right: 20px;">
					<span class="text-primary">From </span>
					<i class="text-muted">{{ @$_REQUEST['date_from']?\Carbon\Carbon::parse($_REQUEST['date_from'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					</i>
					</small>
					
					</h2>
				</div>
				<!-- /.col --> --}}
				<div class="page-header">
						<div class="row">
					        <div class="col-xs-12">
					          
					           <span class="text-primary">Company name</span>

					            

					           		 <small class="pull-right col-sm-3">
					                   	<span class="text-primary">From </span>
					                   	{{ @$_REQUEST['date_from']?\Carbon\Carbon::parse($_REQUEST['date_from'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					                   </small>
					            
					            
					           
					          </div>

					    </div>
					    <div class="row">
					    	<div class="col-xs-12">
					    		
					    			<span class="text-muted">Address here.....</span>
					    	
					            <small class="pull-right col-sm-3" >
					            	<span class="text-primary">To </span>
					            	{{ @$_REQUEST['date_to']?\Carbon\Carbon::parse($_REQUEST['date_to'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					            </small>
					    	</div>
					    </div>
					        <!-- /.col -->
					</div>
		








			

		

			@foreach($accounts as $account)


			@if(count($account) > 0)


			<h3>{{ @$account->first()->getAccount->name }}</h3>
			<div class="row">
				<div class="col-xs-12 table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th class="text-left">Date</th>
								<th class="text-left">Reference</th>
								<th class="text-center">Type</th>
								<th class="text-center">Com</th>
								<th class="text-center">Amount</th>
								<th class="text-center">Balance</th>
								<th class="text-center">Remarks</th>
							<!--	<th class="text-center">SMS</th> -->
								
							</tr>
						</thead>
						<tbody>

							<?php 

								$past = 0;


								$total_remarks = 0;
								$total_remarks_in = 0;
								$total_remarks_out = 0;

								$total_in = 0;
								$total_out = 0;
								$total_com_in = 0;
								$total_com_out = 0;

							?>


							@foreach($account as $transaction)

								
							
							<tr>
								<td>{{ $loop->iteration }}</td>
								<td class="text-left">{{ $transaction->date }}</td>
								<td class="text-left">{{ $transaction->ref_no }}</td>
								<td class="text-center">
									 @if($transaction->direction == 1)

									 	<i class="fa fa-arrow-down bg-success"></i> In
									 @else
									 	<i class="fa fa-arrow-up bg-primary"></i> Out
									 @endif
								</td>
								<td class="text-right">{{ number_format($transaction->com,2) }}</td>
								<td class="text-right">{{ number_format($transaction->amount,2) }}</td>
								<td class="text-right">{{ number_format($transaction->balance,2) }}</td>
						<!--		<td class="text-left"><p class="text-muted">{{ $transaction->body_sms }}</p></td> -->

								<!-- Remarks here -->
								<td class="text-center">
										
							<?php			
									if($transaction->direction == 1 && $loop->iteration > 1){

										$ret =	($past + $transaction->amount + $transaction->com) == $transaction->balance ?  '<i class="fa fa-check bg-success"></i>' : number_format($transaction->balance - ($past + $transaction->amount + $transaction->com),2);

										$total_remarks += $transaction->balance - ($past + $transaction->amount + $transaction->com);

										$total_remarks_in += $transaction->balance - ($past + $transaction->amount + $transaction->com);

										$total_in += $transaction->amount;
										$total_com_in += $transaction->com;

										echo $ret;

									}elseif($transaction->direction == 0 && $loop->iteration > 1){
										

										$ret =	($past - $transaction->amount - $transaction->com) == $transaction->balance ?  '<i class="fa fa-check bg-success"></i>' :  number_format($transaction->balance - ($past - $transaction->amount - $transaction->com),2);

										$total_remarks += $transaction->balance - ($past - $transaction->amount - $transaction->com);

										$total_remarks_out += $transaction->balance - ($past - $transaction->amount - $transaction->com);
										
										$total_out += $transaction->amount;

										$total_com_out += $transaction->com;

										echo $ret;


								
									}

							?>
								</td>
								
							</tr>
							<?php

								$past = $transaction->balance;

							?>
							@endforeach
							<tr>
								<td colspan="4" class="text-right">Total <i class="fa fa-arrow-down bg-success"></i> In</td>
								<td class="text-right"><strong>{{ number_format($total_com_in,2) }}</strong></td>
								<td class="text-right"><strong>{{ number_format($total_in,2) }}</strong></td>
								<td></td>
								<td rowspan="2" class="text-right"><strong>{{ number_format($total_remarks,2) }}</strong></td>
								
							</tr>
							<tr>
								<td colspan="4" class="text-right">Total <i class="fa fa-arrow-up bg-primary"></i> Out</td>
								<td class="text-right"><strong>{{ number_format($total_com_out,2) }}</strong></td>
								<td class="text-right"><strong>{{ number_format($total_out,2) }}</strong></td>
								<td></td>
								
								
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			@else






			@endif




			@endforeach

			@if(@$unidentified)

			<h3>Unidentified</h3>
			<div class="row">
				<div class="col-xs-12 table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th class="text-left">Date</th>
								<th class="text-left">Reference</th>
								<th class="text-center">Type</th>
								<th class="text-center">Com</th>
								<th class="text-center">Amount</th>
								<th class="text-center">Balance</th>
								
							<!--	<th class="text-center">SMS</th> -->
								
							</tr>
						</thead>
						<tbody>

							<?php 

								$past = 0;

							?>


							@foreach($unidentified as $ud)

								
							
							<tr>
								<td>{{ $loop->iteration }}</td>
								<td class="text-left">{{ $ud->date }}</td>
								<td class="text-left">{{ $ud->ref_no }}</td>
								<td class="text-center">
									 @if($ud->direction == '1' )

									 	<i class="fa fa-arrow-down bg-success"></i> In 
									 @else
									 	<i class="fa fa-arrow-up bg-primary"></i> Out
									 @endif
								</td>
								<td class="text-right">{{ number_format($ud->com,2) }}</td>
								<td class="text-right">{{ number_format($ud->amount,2) }}</td>
								<td class="text-right">{{ number_format($ud->balance,2) }}</td>
						<!--		<td class="text-left"><p class="text-muted">{{ $ud-> body_sms }}</p></td> -->

								<!-- Remarks here -->
					
								
							</tr>
							<?php

								$past = $ud->balance;

							?>
							@endforeach
							<tr>
								<td colspan="4"></td>
								<td class="text-right"><strong>{{ number_format($account->sum('com'),2) }}</strong></td>
								<td class="text-right"><strong>{{ number_format($account->sum('amount'),2) }}</strong></td>
								<td></td>
								
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			@endif
			
		
			
			
		</div>
		
	

@section('scripts')

<script type="text/javascript" src="{{ asset('plugins/iCheck/icheck.min.js')}}">
	
</script>

<script type="text/javascript">
	

	//iCheck for checkbox and radio inputs
	$('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
	  checkboxClass: 'icheckbox_minimal-blue',
	  radioClass   : 'iradio_minimal-blue'
	})
	//Red color scheme for iCheck
	$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
	  checkboxClass: 'icheckbox_minimal-red',
	  radioClass   : 'iradio_minimal-red'
	})
	//Flat red color scheme for iCheck
	$('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	  checkboxClass: 'icheckbox_flat-green',
	  radioClass   : 'iradio_flat-green'
	})



</script>
@endsection




@endsection