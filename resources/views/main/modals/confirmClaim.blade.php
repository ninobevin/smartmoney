  <!-- Modal -->

<?php
  
  $appConfig = new App\library\Application;
  $branch_details = $appConfig->getBranch();

?>

<div class="modal fade modal-default" id="confirmClaim" role="dialog">
  <div class="modal-dialog">
    
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Confirmation</h4>
      </div>
      <div class="modal-body">
        <form method="POST" action="{{ route('transaction.claim')}}" >


         

              <fieldset class="form-group">
                
                
                <label class="label label-primary">Account</label>
                <select  name="account" class="form-control" required="required">
                  <option value="" disabled selected >--Choose Acct--</option>
                  
                  @if(!isset($Transaction->account))
                    @foreach(App\Account::all() as $account)
                            
                        @if($account->account_no == $Transaction->account)
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
                    <option selected value="{{ $Transaction->account }}">
                    {{ $Transaction->getAccount->name }}
                    </option>
                  @endif
                </select>
              </fieldset>

        


          <fieldset class="form-group">
            <label class="label label-primary">Payout amount total</label>
              <input type="number" class="form-control" value='{{ $Transaction->amount }}' name="cash_amount">
            
          </fieldset>
          <fieldset class="form-group">
            
            
            <label class="label label-primary">Branch</label>
            <select  name="branch_no" class="form-control" required="required">
              
              

              
              @if($branch_details->main == '1')
                @foreach(App\Branch::all() as $branch)

                  <option value="{{ $branch->branch_no }}">{{ $branch->branch_name }}</option>

                @endforeach
              @else
                <option value="{{ $branch_details->branch_no }}">{{ $branch_details->branch_name }}</option>
              @endif    
            </select>
          </fieldset>

          
          
          
          <input type="hidden" id="cust_id_submit" name='cust_id'>
          <input type="hidden" value="{{ $Transaction->ref_no }}" name='ref_no'>
          
          {{ csrf_field() }}
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary btn-flat">Proceed</button>
          <button type="button" class="btn btn-danger btn-flat" data-dismiss="modal">Cancel</button>
          
        </div>
      </form>
    </div>
    
  </div>
</div>