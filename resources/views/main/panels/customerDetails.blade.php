

						<hr>

							<div class="row">
	
							<div class="col-sm-4">
								<img  name="imgtag"  class="img-responsive" width="500" height="500" id="imgtag"
										  

										@if(!Storage::has('public/customer/'.$Customer->cust_id.'.jpeg'))

											 src="{{ asset('dist/img/user.jpeg') }}"

										@else


               								 src="{!! asset('storage/customer/' .$Customer->cust_id.'.jpeg') !!}"
										
										@endif
									alt=""></img>
							</div>
 	
							<div class="colsm-8">
						
							<strong>Fullname</strong>
							<p class="text-muted">
								{{ $Customer->getFullName() }}
							</p>
						
						
							<strong>Address </strong>
							<p class="text-muted">
								{{ $Customer->address->getAddress() }}
							</p>
					
					
							<strong>Contact</strong>
							<p class="text-muted">
								{{ $Customer->contact }}
							</p>

							<br>

							<a  href="{{ route('customeredit',['id' => $Customer->cust_id]) }}"><strong><i class="fa fa-pencil-square-o"></i>  Edit Details</strong></a>

							<input type="hidden" id="cust_id_selected" value="{{ $Customer->cust_id }}">

							</div>

							</div>

							<div class="no-print">
								<button type="button" data-toggle="modal" id='btnPayout' data-target="#confirmClaim" class="btn btn-primary pull-right"><i class="fa fa-handshake-o"></i> PAYOUT</button>
							</div>





		
						



