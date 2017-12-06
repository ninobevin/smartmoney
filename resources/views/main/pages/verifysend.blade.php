@extends('main.main')

@section('pagetitle')

@endsection
@section('content')
@include('main.modals.quickAddCustomer')

<?php
	
	$appConfig = new App\library\Application;
	$branch_details = $appConfig->getBranch();


	$network_charge = new App\NetworkCharge();
	$agent_charge = new App\AgentCharge();

?>

<div class="row">
	<div class="col-md-8">

		<div class="box box-warning">
			
			<div class="box-header with-border">
				<span class="box-title">Send Verification</span> 
			</div>
			<div class="box-body">
				

			
					
						<form action="" method="get" id="checkform">

							

							<div class="row">
								
								<div class="col-md-6  col-md-offset-3">
										

									<span class="label label-default">SMS:</span>
									<br> 
									<p>
										<b>
										{{ $transaction->body_sms }}
										</b>
									</p>	
									<span class="label label-default">Reference:</span>
									<br>
									<b>{{ $transaction->ref_no }}</b>
									<br>
									<span class="label label-default">Amount:</span>
									<br>
									<b>{{ $transaction->amount }}</b>
									<br>
									<br>


									

								</div>
							</div>
							<div class="row">
								
								<div class="form-group col-md-6 col-md-offset-3">
								<span class="label label-default">Branch</span>
									<select name='branch_no' class="form-control">

							@if($branch_details->main == '1')
								@foreach(App\Branch::all() as $branch)
									@if(@$_REQUEST['branch_no'] == $branch->branch_no)
										<option selected value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
									@else
										<option value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>
									@endif
								@endforeach
								
							
							@else
								<option value="{{ $branch_details->branch_no }}">{{ $branch_details->branch_name }}</option>
							@endif


									</select>

								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-6  col-md-offset-3">
									<label class="label label-default">Account</label>
									<select  name="account" class="form-control" required="required">
									  <option value="" disabled selected >--Choose Acct--</option>
									  
									  @if(!isset($transaction->account))
									    @foreach(App\Account::all() as $account)
									            
									        @if($account->account_no == $transaction->account)
									            <option selected value="{{ $account->account_no }}">
									            {{ $account->name }}
									            </option>
									        @else
									            <option  value="{{ $account->account_no }}">
									            {{ $account->name }}
									            </option>

									        @endif
									        

									    @endforeach
									  @else
									    <option selected value="{{ $transaction->account }}">
									    {{ $transaction->getAccount->name }}
									    </option>
									  @endif
									</select>
								</div>
							</div>

							<?php

								$transaction->setCash();
							?>




							<div class="row">
								
								<div class="form-group col-md-6  col-md-offset-3">
										
									<span class="label label-default">Pay-In</span>
									<input type="text" class="form-control" name="cash_amount" value="{{ $transaction->cash }}">	

								</div>
							</div>
							<div class="row">
								
								
					
				
							<div class="form-group col-md-6  col-md-offset-3">
								<div class="input-group">
						            <input type="text" autocomplete="off" style="" name='search' data-provide="typeahead" id='searchCustomer' class="form-control"  placeholder="Customer Name (optional)">
						            <span class="input-group-btn">
						              <button type="button" class="btn btn-flat"><i class="fa fa-user-plus" data-toggle="modal" data-target="#quickAddCustomer" ></i>
						              </button>						     
						            </span>
		          				</div>

	          				
	          					{{-- <div class="col-md-4">
	          					  <button type="button"  class="btn btn-primary btn-flat" data-toggle="modal" data-target="#quickAddCustomer"><i class="fa fa-user"> Quick add Customer</i>
						              </button>
	          					</div>
					 --}}
					
							
							</div>
						    </div>
						    <div class="row">
						    	<div class="form-group col-md-6  col-md-offset-3">
						    		<input  type="text" placeholder="Customer ID" class="form-control" name="cust_id" id="cust_id" value="">
						    	</div>
						    	
						    </div>
						    
							<div id='result' class="col-md-6 col-md-offset-3"></div>
					
							<input type="hidden" name="tran_id" value="{{ $transaction->tran_id }}">
							
							<div class="row">
								
								<div class="form-group col-md-6  col-md-offset-3">

									<button id="btn_verify" name="btn_verify" value="1" class="form-control btn btn-warning">Verify</button>

								</div>


							</div>


							
						</form>


			

				



			</div>

		</div>

	

	</div>
	<div class="col-md-4">
		@include('main.panels.rightInfoPanel')
	</div>
	
</div>
	

@section('scripts')

<script type="text/javascript">

  $(document).ready(function(){

    $.ui.autocomplete.prototype._renderItem = function( ul, item){
      var term = this.term.split(' ').join('|');
      var re = new RegExp("(" + term + ")", "gi") ;
      var t = item.label.replace(re,"<b>$1</b>");
      return $( "<li></li>" )
      .data( "item.autocomplete", item )
      .append( "<a>" + t + "</a>" )
      .appendTo( ul );
    };




    $( "#searchCustomer" ).autocomplete({
      source:function(request, response) {
        $.getJSON("{{ route('searchMain') }}", {term: request.term,cb_option: 2 },
          response);
      },
      select: function(str,ui){

      	$.get("{{ route('searchCustomer') }}",{term :ui.item.value,out:"1"},function(data){

      			$('#result').html(data);

      			var id = $('#cust_id_selected').val();

      			$('#cust_id').val(id);

      			$('#btn_verify').focus();
      			//$('#cust_id').attr("disabled", true) 
      	
      	});
	}});




	    $( "#searchAddress" ).autocomplete({
      source:function(request, response) {
        $.getJSON("{{ route('searchAddress') }}", {term: request.term},
          response);
      },
      select: function(str,ui){

     	$.get("{{ route('searchAddressView') }}",{term :ui.item.value},function(data){

      			$("#quick_address").val(data);

      	
      	});
      	//console.log(str);




	}});



  });
</script>

@yield('scriptsave')


@endsection




@endsection