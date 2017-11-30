@extends('main.main')

@section('pagetitle')


@endsection
@section('content')

<style type="text/css">
	#videoElement {
    width: 500px;
    height: 375px;
    background-color: #666;
}
</style>

<div class="row">
	<div class="col-md-8">

	@if(Session::has('success_msg'))

	  <div class="alert alert-success">

	    <i class="fa fa-check"></i> {{ Session::get('success_msg') }}
	  </div>

	@endif



		

	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
</div>




	
@endsection