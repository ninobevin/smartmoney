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
								<td class="text-center">
								{{ @$transaction->customer->getFullName() }}</td>
							</tr>


				           @endforeach
				           
				           <tr>
				           	<td colspan="5"></td>
				           	<td class="text-right"><strong>{{ number_format($claims->sum('com'),2) }}</strong></td>
				           	<td class="text-right"><strong>{{ number_format($claims->sum('amount'),2) }}</strong></td>
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
				                  <th class="text-center">Customer</th>
				                </tr>
				                </thead>
				                <tbody>


				                @foreach($sends as $transaction)

				     			<tr>
				     				<td>{{ $loop->iteration }}</td>
				     				<td class="text-left">{{ $transaction->date }}</td>
				     				<td class="text-left">{{ $transaction->ref_no }}</td>
				     				<td class="text-right">{{ number_format($transaction->com,2) }}</td>
				     				<td class="text-right">{{ number_format($transaction->amount,2) }}</td>
				     				<td class="text-center">
				     					{{ @$transaction->customer?$transaction->customer->getFullName():'None' }}</td>
				     			</tr>


				                @endforeach
				                
				                <tr>
				                	<td colspan="3"></td>
				                	<td class="text-right"><strong>{{ number_format($sends->sum('com'),2) }}</strong></td>
				                	<td class="text-right"><strong>{{ number_format($sends->sum('amount'),2) }}</strong></td>
				                	<td class="text-center"></td>
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