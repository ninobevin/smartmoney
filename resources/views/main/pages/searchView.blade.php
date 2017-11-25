@extends('main.main')

@section('pagetitle')


@endsection
@section('content')


<div class="row">
	<div class="col-md-8">

	@if(isset($error))

	  <div class="alert alert-warning">

	    <i class="fa fa-exclamation-triangle"></i> {{ $error }}
	  </div>

	@endif

	@if(isset($result))

		@if($result->total() <= 0)

				<div class="alert alert-warning">

			   		 <i class="fa fa-exclamation-triangle"></i> Sorry, No Record Available.
			  	</div>
		@else
				<div class="alert alert-info">

				  <i class="fa fa-info-circle"></i> {{ $result->count() }}  out of 
				   {{ $result->total() }}  Result found 
				</div>

		@endif

	@endif

		

	@if(isset($Customers))
		@foreach($Customers as $customer)
		
			
			@include('main.panels.searchDetailsCustomer')
		
		
		@endforeach
	@endif

	

	@if(isset($Transactions))
		@foreach($Transactions as $transaction)
		
		
			@include('main.panels.searchInfoReference')
		
		
		@endforeach
	@endif
	@if(isset($Sms))
		@foreach($Sms as $sms)
		
		
			@include('main.panels.searchInfoSms')
		
	
		
		@endforeach
	@endif
	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
</div>
	
	@if(isset($Customers))
	{{ $Customers->appends(['search'=>$_REQUEST['search'],'cb_option'=>$_REQUEST['cb_option']])->links() }}
	@endif
	@if(isset($Transactions))
	{{ $Transactions->appends(['status'=>$_REQUEST['status'],'date_to'=>$_REQUEST['date_to'],'date_from'=>$_REQUEST['date_from'],'search'=>$_REQUEST['search'],'cb_option'=>$_REQUEST['cb_option']])->links() }}
	@endif
	@if(isset($Sms))
		{{ $Sms->appends(['date_to'=>$_REQUEST['date_to'],'date_from'=>$_REQUEST['date_from'],'search'=>$_REQUEST['search'],'cb_option'=>$_REQUEST['cb_option']])->links() }}
	@endif
@endsection