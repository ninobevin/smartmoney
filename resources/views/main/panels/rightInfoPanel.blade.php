<div class="box box-primary no-print">
	<div class="box-header with-border">
		<h3 class="box-title">Quick Information</h3>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		
		<h5><span class="label label-success">Pending Amount (Unclaimed)</span></h5>
		<p class="text-muted">
			{{  App\Transaction::where('status','1')->sum('amount')  }} 
		</p>

		<h5><span class="label label-danger">Claimed</span></h5>
		<p class="text-muted">
			{{  App\Transaction::where(['status'=>'2'])
			->whereDate('date_claimed',DB::raw('curdate()'))
			->sum('amount')  }} 
		</p>
		<h5><span class="label label-primary">Sent</span></h5>
		<p class="text-muted">
			{{  App\Transaction::where(['status'=>'3'])
			->whereDate('date',DB::raw('curdate()'))
			->sum('amount')  }} 
		</p>
		<hr>
		
	</div>
	<!-- /.box-body -->
</div>
<div class="box box-primary no-print">
	<div class="box-header with-border">
		<h3 class="box-title">Advertisement</h3>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		
		{{-- <img class="img-responsive" src="http://www.lowervillagesurveyco.com/wp-content/uploads/2012/10/Surveying+crew+on+construction+site1.jpg"> --}}

		<span class="text-muted">ADS SPACE</span>
		
	</div>
	<!-- /.box-body -->
</div>