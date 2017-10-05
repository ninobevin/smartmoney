@extends('main.main')

@section('pagetitle')


@endsection
@section('content')



<div class="row">
	<div class="col-md-8">

	@include('main.panels.inbox');


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