<div class="box box-primary direct-chat direct-chat-primary">
	<div class="box-header with-border">
		<h3 class="box-title">Direct Chat</h3>
		<div class="box-tools pull-right">
			{{-- <span data-toggle="tooltip" title="3 New Messages" class="badge bg-light-blue">3</span> --}}
			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
			</button>
			<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
			<i class="fa fa-comments"></i></button>
			<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<!-- Conversations are loaded here -->
		<div class="direct-chat-messages" style="height: 90%">
			<!-- Message. Default to the left -->
	{{-- 		<div class="direct-chat-msg">
				<div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-left">Smartpadala</span>
					<span class="direct-chat-timestamp pull-right"></span>
				</div>
				<!-- /.direct-chat-info -->
				<img class="direct-chat-img" src="../dist/img/avatar.png" alt="Message User Image"><!-- /.direct-chat-img -->
				<div class="direct-chat-text">
					Is this template really for free? That's unbelievable!
				</div>
				<!-- /.direct-chat-text -->
			</div>
 --}}
			@foreach($Sms as $sms)
				<div class="direct-chat-msg">
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-name pull-left">{{$sms->address}}</span>
					
						<span class="direct-chat-timestamp pull-right">{{ date('M d Y H:i:s',$sms->date/1000) }}</span>
						
					</div>
					<!-- /.direct-chat-info -->
					<img class="direct-chat-img" src="../dist/img/user.jpeg" alt="Message User Image">
					<div class="direct-chat-text">
						{{$sms->body}}
					</div>
					<!-- /.direct-chat-text -->
				</div>

			@endforeach
			<!-- /.direct-chat-msg -->
			<!-- Message to the right -->
		{{-- 	<div class="direct-chat-msg right">
				<div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-right">Sarah Bullock</span>
					<span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
				</div>
				/.direct-chat-info
				<img class="direct-chat-img" src="../dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
				<div class="direct-chat-text">
					You better believe it!
				</div>
				<!-- /.direct-chat-text -->
			</div> --}}
			<!-- /.direct-chat-msg -->
		</div>
		<!--/.direct-chat-messages-->
		<!-- Contacts are loaded here -->

		<!-- /.direct-chat-pane -->
	</div>
	<div class="box-footer">
		<form action="#" method="post">
			<div class="input-group">
				<input type="text" name="message" placeholder="Type Message ..." class="form-control">
				<span class="input-group-btn">
					<button type="submit" class="btn btn-primary btn-flat">Send</button>
				</span>
			</div>
		</form>
	</div>
	<!-- /.box-footer-->
</div>
<!--/.direct-chat -->