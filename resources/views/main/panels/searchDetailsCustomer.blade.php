
<?php
 
    use \Carbon\Carbon;




?>



          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive zoom" 

                @if(!Storage::has('public/customer/'.$customer->cust_id.'.jpeg'))

                src="{{ asset('dist/img/user.jpeg') }}"

                @else

             
                src="{!! asset('storage/customer/' .$customer->cust_id.'.jpeg') !!}"

                

                @endif

                alt="User profile picture">


              <h3 class="profile-username text-center">{{ $customer->getFullName() }}</h3>

              <p class="text-muted text-center"></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Joined</b> <a class="pull-right"> {{  Carbon::parse($customer->date_registered)->diffForHumans()  }}</a>
                </li>
                <li class="list-group-item">
                  <b>Number of Transactions</b> <a class="pull-right">{{ $customer->transaction->count()  }}</a>
                </li>
                <li class="list-group-item">
                  <strong><i class="fa fa-map-marker margin-r-5"></i>Address</strong>
                    @if(is_null($customer->address))
                      <a class="pull-right"> No Address Yet</a>
                    @else
                      <a class="pull-right"> {{ $customer->address->getAddress()  }}</a>
                    @endif
                   
                  </a>
                </li>
              </ul>

              <a href="{{ route('customeredit',['id' => $customer->cust_id]) }}"  class="btn btn-primary btn-block"><b>View Details</b></a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->