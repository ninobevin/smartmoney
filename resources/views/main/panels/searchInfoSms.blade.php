<?php

use \Carbon\Carbon;
?>
<div class="box box-primary">



	<div class="box-header with-border">
		<h3 class="box-title"><i class="fa fa-envelope-o"></i> SMS </h3>

	</div>
	<!-- /.box-header -->



	<div class="box-body">
		<strong>SENDER</strong>
			<p class="text-muted">
				{{ $sms->address }}
			</p>
		<strong>SMS</strong>
			<p class="text-muted">
				{{ $sms->body }}
			</p>
		<br>
		<strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>
			<p>
				
			</p>
		
	
	<div class="btn-group pull-right">
		
		
		<a href='{{  route("search.filtersms",["id"=>$sms->id]) }}' class="btn btn-primary">Filter </a>
		<a href='{{  url("search/forcefilterIndex/{".encrypt($sms->id)."}") }}' class="btn btn-warning">Force Filter </a>


	</div>
			

			<!--	<form action='{{ route('search.filtersms') }}' method="post"> -->
					
			

								
		
	</div>
	
	<div class="box-footer">

		
		
	</div>

	<!-- /.box-body -->
</div>