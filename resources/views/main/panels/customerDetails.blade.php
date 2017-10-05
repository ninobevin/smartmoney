

					


	

 	
							<div>
						
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

							<input type="hidden" id="cust_id_selected" value="{{ $Customer->cust_id }}">

							</div>

							<div class="no-print">
								<button type="button" data-toggle="modal" id='btnPayout' data-target="#confirmClaim" class="btn btn-primary pull-right"><i class="fa fa-handshake-o"></i> PAYOUT</button>
							</div>



		
							</script>



