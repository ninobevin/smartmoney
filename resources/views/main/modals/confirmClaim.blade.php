  <!-- Modal -->
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
          <strong>Payout amount total: </strong> <input type="number" value='{{ $Transaction->amount }}' name="amount">
          
          <input type="hidden" id="cust_id_submit" name='cust_id'>
          <input type="hidden" value="{{ $Transaction->ref_no }}" name='ref_no'>
          
          {{ csrf_field() }}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-default">Complete Transaction</button>
        </div>
      </form>
    </div>
    
  </div>
</div>