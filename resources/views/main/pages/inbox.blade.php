@extends('main.main')

@section('pagetitle')


@endsection
@section('content')



<div class="row">
	
	<div class="col-md-8">
		{{-- @include('main.panels.inbox'); --}}
	
			<form action="{{ route('sms.inbox') }}" method="get" >
				<div class="row">
			<div class="col-md-8">
				
				<input type="text" name="q" placeholder="Search mobile number here" class="form-control">
			</div>
			


			
			<div class="col-md-4">

				<button type="submit" class="btn  btn-primary form-control">Search</button>
			</div>
				
			
				
			</div>
			
			</form>
		
		<hr/>


		<?php

			

			// if( isset($_REQUEST['q']) && !empty(trim($_REQUEST['q'])) ){

			// 	$smsinbox = App\Sms::select('address')->where('address','like','%'.$_REQUEST['q'].'%')->distinct('address')->get();

			// }

			



		?>

		<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3>My Inbox</h3>
						</div>
						<div class="panel-body">
							<div class="list-group">
								
								<div class="list-group-item">
									@foreach($smsinbox as $sms)
									

									<a class="btn btn-block btn-social btn-github" 
									href="{{ route('sms.details',['sms_id' => $sms->address]) }}">
									   <i class="fa fa-envelope"></i> 

									   {{ $sms->address }} <label style="margin-left: 20px" class="label label-default">{{ App\Sms::where('address',$sms->address)->count() }}</label>
									</a>
									@endforeach
								</div>

								
							</div>
						</div>
						
					</div>
				</div>
			
		</div>




			{{ $smsinbox->appends(['q'=> @$_REQUEST['q']])->links() }}





		

	

	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
</div>
	

@section('scripts')

<script type="text/javascript">

  $(document).ready(function(){

    


  });
</script>
@endsection




@endsection