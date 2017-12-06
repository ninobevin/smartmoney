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
	<div class="col-md-12">

	@if(Session::has('success_msg'))

	  <div class="alert alert-success">

	    <i class="fa fa-check"></i> {{ Session::get('success_msg') }}
	  </div>

	@endif
	@if(Session::has('error_msg'))

	  <div class="alert alert-danger">

	    <i class="fa fa-triagle"></i> {{ Session::get('error_msg') }}
	  </div>

	@endif		


		<div class="panel panel-default no-print">
			<div class="panel-heading">
				<form class="form-inline" action="" method="get">
					<div class="form-group">
						<label for="date_start">From:</label>
						<input type="date" value="{{ @$_REQUEST['date_start']?$_REQUEST['date_start']:\Carbon\Carbon::now()->format('Y-m-d') }}" name="date_start" class="form-control">
					</div>
					<div class="form-group">
						<label for="date_end">To:</label>
						<input type="date" name='date_end' value="{{ @$_REQUEST['date_end']?$_REQUEST['date_end']:\Carbon\Carbon::now()->format('Y-m-d') }}" class="form-control">
					</div>
					<div class="form-group">
						


						<select name='branch_no' class="form-control">
						

						@if($branch_details->main == '1')
							@foreach(App\Branch::all() as $branch)

								@if(@$_REQUEST['branch_no'] == $branch->branch_no)
									<option selected value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
								@else
									<option value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
								@endif

							@endforeach

							@if(@$_REQUEST['branch_no'] == 'none')
								<option selected value="none">None</option>
							@else
								<option value="none">None</option>
							@endif

						@else
							<option value="{{ $branch_details->branch_no }}">{{ $branch_details->branch_name }}</option>
						@endif		
							


						</select>
					</div>
					
					<button type="submit" value="1" name="generate" class="btn btn-warning btn-flat">Generate</button>

					<span class="text-primary pull-right"> <a data-toggle="collapse" href="#panel_filter">Show Columns</a> <i class="fa fa-arrow-down"></i></span>
			
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

			</form>	
			
		</div>



		
				<div class="invoice">
					<div class="page-header">
						<div class="row">
					        <div class="col-xs-12">
					          
					           <span class="">
					           	<b>{{ $appConfig::COMPANY_NAME }}</b>
					           	<span class="text-muted">
					           		<small><u>{{ @App\Branch::where('branch_no',$_REQUEST['branch_no'])->first()->branch_name
					           	}} Branch</small></u></span>
					           </span>

					            

					           		 <small class="pull-right col-sm-3">
					                   	<span class="text-primary">From </span>
					                   	{{ @$_REQUEST['date_start']?\Carbon\Carbon::parse($_REQUEST['date_start'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					                   </small>
					            
					            
					           
					          </div>

					    </div>
					    <div class="row">
					    	<div class="col-xs-12">
					    		
					    			<span class="text-muted"><small>Sales Report</small></span>
					    	
					            <small class="pull-right col-sm-3" >
					            	<span class="text-primary">To </span>
					            	{{ @$_REQUEST['date_end']?\Carbon\Carbon::parse($_REQUEST['date_end'])->format('F d Y'):\Carbon\Carbon::now()->format('F d Y') }}
					            </small>
					    	</div>
					    </div>
					        <!-- /.col -->
					</div>
				



				@if(count($claims) > 0)


				<h3>Incomming (<i>Claim</i>)</h3>


				<div class="row">
				       <div class="col-xs-12 table-responsive">
				         <table class="table table-striped">
				           <thead>
				           <tr>
				             <th>#</th>
				             <th class="text-left">Date</th>
				              <th class="text-left">Claimed</th>
				             <th class="text-left">Account</th>
				             <th class="text-left">Reference</th>
				             <th class="text-center">Com</th>
				             <th class="text-center">Amount</th>
				             <th class="text-center">Pay-out</th>
				             <th class="text-center">Customer</th>
				           </tr>
				           </thead>
				           <tbody>


				           @foreach($claims as $transaction)

							<tr>
								<td>{{ $loop->iteration }}</td>
								<td class="text-left">{{ $transaction->date }}</td>
								<td class="text-left">{{ $transaction->date_claimed }}</td>
								<td class="text-left">{{ isset($transaction->getAccount->name)?$transaction->getAccount->name : "Unidentified" }}</td>
								<td class="text-left">{{ $transaction->ref_no }}</td>
								<td class="text-right">{{ number_format($transaction->com,2) }}</td>
								<td class="text-right">{{ number_format($transaction->amount,2) }}</td>
								<td class="text-right">{{ number_format($transaction->cash_amount,2) }}</td>
								<td class="text-center">
								{{ @$transaction->customer->getFullName() }}</td>
							</tr>


				           @endforeach
				           
				           <tr>
				           	<td colspan="5"></td>
				           	<td class="text-right"><strong>{{ number_format($claims->sum('com'),2) }}</strong></td>
				           	<td class="text-right"><strong>{{ number_format($claims->sum('amount'),2) }}</strong></td>
				           <td class="text-right"><strong>{{ number_format($claims->sum('cash_amount'),2) }}</strong></td>
				           	<td class="text-center"></td>
				           </tr>

				          
				           
				           </tbody>
				         </table>
				       </div>
				       <!-- /.col -->
				     </div>


				     @endif

				     @if(count($sends) > 0)	
				     <h3>Outgoing (<i>Sent</i>) </h3>


				     <div class="row">
				            <div class="col-xs-12 table-responsive">
				              <table class="table table-striped">
				                <thead>
				                <tr>
				                  <th>#</th>
				                  <th class="text-left">Date</th>
				                  <th class="text-left">Reference</th>
				                  <th class="text-center">Com</th>
				                  <th class="text-center">Amount</th>
				                  <th class="text-center">Pay-in</th>
				                  <th class="text-center">Customer</th>
				                  <th class="text-center no-print"></th>
				                </tr>
				                </thead>
				                <tbody>


				                @foreach($sends as $transaction)

				                <?php
				                	$transaction->setCash();
				                ?>

				     			<tr>
				     				<td>{{ $loop->iteration }}</td>
				     				<td class="text-left">{{ $transaction->date }}</td>
				     				<td class="text-left">{{ $transaction->ref_no }}</td>
				     				<td class="text-right">{{ number_format($transaction->com,2) }}</td>
				     				<td class="text-right">{{ number_format($transaction->amount,2) }}</td>
				     				<td class="text-right">
				     					
				     					@if($transaction->cash_amount == '')
				     						<b>?</b>
				     					@else
				     						<span class=" text text-success">
				     							{{ number_format($transaction->cash_amount,2) }}
				     						</span>
				     					@endif	

				     				</td>
				     				<td class="text-center">
				     					{{ @$transaction->customer?$transaction->customer->getFullName():'None' }}</td>
				     				<td class="text-center">
				     					<a href='{{ route("transaction.verifysend",["tran_id"=> $transaction->tran_id]) }}' class="btn btn-primary">Edit</a>
				     				</td>
				     			</tr>

				     		
				                @endforeach
				                
				                <tr>
				                	<td colspan="3"></td>
				                	<td class="text-right"><strong>{{ number_format($sends->sum('com'),2) }}</strong></td>
				                	<td class="text-right"><strong>{{ number_format($sends->sum('amount'),2) }}</strong></td>
				                	<td class="text-right"><strong>{{ number_format($sends->sum('cash'),2) }}</strong></td>
				                	<td class="text-center" colspan="2">
				                		@if($branch_details->main == '1')
				                			<form method="get" action="">
				                				<input type="hidden" value="{{@$_REQUEST['date_start']}}" name="date_start">
				                				<input type="hidden" value="{{@$_REQUEST['date_end']}}" name="date_end">

				                				<button name="btn_verify"  value='1' class="form-control btn btn-primary">Verify All</button>
				                				
				                			</form>
				                		@endif
				                		
				                	</td>
				                </tr>

				               
				                
				                </tbody>
				              </table>
				            </div>
				            <!-- /.col -->
				          </div>
				          @endif


				          @if( !count($claims) && !count($sends))



				          	<h1 class="text-muted">No Record Found</h1>



				          @endif	

				</div>
			
		

	

	</div>
	
</div>
	

@section('scripts')




@endsection




@endsection