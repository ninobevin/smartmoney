@extends('main.main')

@section('pagetitle')

@endsection
@section('content')



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



		<div class="box">
		            <div class="box-header with-border">
		              <h3 class="box-title">Registered Users</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
		              <table class="table table-bordered">
		                <tr>
		                  <th style="width: 10px">#</th>
		                  <th>Username</th>
		                  <th>Name</th>
		                  <th>Privilege</th>
		                  <th style="width: 200px">Status</th>
		                  <th>Update</th>
		                  <th></th>
		                </tr>


		                <?php
		                	$User = App\User::where('level','>','1')->paginate(10);
		                ?>
		               
		                @foreach( $User as $key => $users)


		                <form method="get" action="">

		                	<tr>
		                	  <td>{{ $key+1}}<input type="hidden" value="{{$users->id}}" name="id"></td>
		                	  <td>{{$users->username}}</td>
		                	  <td>
		                	    {{$users->name}}
		                	  </td>
		                	  <td>
		                	     <select class="form-control" name="level">
		                	    		                	  		

								@foreach($users->level_option as $k => $level_option)
									@if($users->level == $k)
										<option selected value="{{ $k }}">{{ $level_option }}</option>
									@else
										<option value="{{ $k }}">{{ $level_option }}</option>
									@endif
								@endforeach
								</select>
		                	  </td>
		                	  <td>

		                	  <select class="form-control" name="status">
		                	  		


		                	  	
		                	  	@foreach($users->status_option as $status_option)

		                	  		@if($users->status == $status_option)

		                	  		<option selected value="{{ $users->status }}">{{ $users->status }}</option>
		                	  		@else
		                	  		<option value="{{ $status_option }}">{{ $status_option }}</option>
		                	  		@endif

		                	  	@endforeach
		                	  	</select>
		                	  </td>
		                	  <td>
			                	  <span class="text-muted">
			                	  	{{  $users->updated_at->diffForHumans() }}	
			                	  </span>
		                	  </td>
		                	  <td>
		                	  	<div class="form-group">
		             
		                	  		<button value="1" name="saveuser" class="btn btn-success flat"><i class="fa fa-save"></i> Save</button>
		                	  	</form>
		                	  		<a  href="{{ route('home') }}" class="btn btn-danger flat"><i class="fa fa-close"></i> Remove</a>
		                	  		<button class="btn btn-primary flat">View Details</button>

		                	  	</div>
		                	  </td>
		                	</tr>


		                @endforeach


		              </table>
		            </div>
		            <!-- /.box-body -->
		           <div class="box-footer clearfix">
		              {{-- <ul class="pagination pagination-sm no-margin pull-right">
		                <li><a href="#">&laquo;</a></li>
		                <li><a href="#">1</a></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">&raquo;</a></li>
		              </ul> --}}
		              <ul class="pagination pagination-sm no-margin pull-right">
		              {{ $User->links() }}
		          	  </ul>
		            </div> 


		           
		</div>

	

	</div>
	
</div>
	

@section('scripts')




@endsection




@endsection