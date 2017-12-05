    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- search form (Optional) -->
        <form  method="get" id='searchForm' action="{{ route('view') }}" class="sidebar-form">
          <div class="input-group">
            <input type="text" autocomplete="off"   name='search' data-provide="typeahead" id='search' class="form-control" value="{{ @$_REQUEST['search'] }}" placeholder="Search...">
            <span class="input-group-btn">
              <button type="submit"   class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
          </div>

          <div style="padding-left: 5px; color:white;">
            <label style="padding-top: 5px; padding-right: 5px; cursor: pointer;" data-toggle="collapse" data-target="#filtermenu" >Filter  <i class="fa fa-arrow-circle-down"></i></label>
            <div id="filtermenu" class="collapse">
                <div class="checkbox">
                  <label>
                    <input  type="radio"  class="flat-green"  name='cb_option' id='cb_option' <?php  if(!isset($_REQUEST['cb_option']) ||  @$_REQUEST['cb_option'] == 1)
                    echo "checked" ?> value="1">
                    Reference Number
                  </label>
                   

                  <label style="margin-left: 10px">
                    <input type="checkbox" name="status[]" value="1" class="minimal-red" 
                      <?php

                        echo (@in_array("1",@$_REQUEST['status'])
                        )? "checked" : ""; 

                        if(!isset($_REQUEST['status'])){
                          echo "checked";
                        }

                      ?>
                    >
                    Pending
                    <br>
                    <input type="checkbox" name="status[]" value="2"  class="minimal-red" 
                      <?php

                        echo (@in_array("2",$_REQUEST['status'])
                        )? "checked" : ""; 

                        if(!isset($_REQUEST['status'])){
                          echo "checked";
                        }
                      ?>
                    >
                    Claimed
                     <br>
                    <input type="checkbox" name="status[]" value="3"  class="minimal-red" 
                      <?php

                        echo (@in_array("3",@$_REQUEST['status'])
                        )? "checked" : ""; 

                        if(!isset($_REQUEST['status'])){
                          echo "checked";
                        }

                      ?>

                    >
                    Send
                  </label>

                </div>


                <div class="checkbox">
                  <label>
                    <input  type="radio"  name='cb_option' id='cb_option' <?php if(isset($_REQUEST['cb_option']) &&  $_REQUEST['cb_option'] == 2)
                    echo "checked" ?>  value="2" >
                    Customer
                  </label>
                </div>
                <div class="checkbox" >
                  <label>
                    <input type="radio"   name='cb_option' id='cb_option' <?php if(isset($_REQUEST['cb_option']) &&  $_REQUEST['cb_option'] == 3)
                    echo "checked" ?>  value="3" >
                    Message
                  </label>
                </div> 
                 <p> <i class="fa fa-calendar"></i> From</p>
             <input type="date" class="form-control input-sm" name="date_from" value="{{ @$_REQUEST['date_from']?$_REQUEST['date_from']:\Carbon\Carbon::now()->subMonths(6)->format('Y-m-d') }}">
         
              <p> <i class="fa fa-calendar"></i> To</p>
             <input type="date" class="form-control input-sm" name="date_to" value="{{ @$_REQUEST['date_from']?$_REQUEST['date_to']:\Carbon\Carbon::now()->format('Y-m-d') }}">    
            </div>
        
          
             
          </div>
         
         


        </form>

        


        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
          <li class="header">Main Menu</li>
          <!-- Optionally, you can add icons to the links -->
          <li><a href='{{ url('/home') }}'><i class="fa fa-home"></i> <span>Home</span></a></li>
          <li class="treeview">
              <a href="#"><i class="fa fa-mobile-phone"></i> <span>Phone</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href='{{ route("sms.inbox") }}'><span>Inbox</span></a></li>
              </ul>         
          </li>
          <li class="treeview">
              <a href="#"><i class="fa fa-calendar-check-o"></i> <span>Report</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href='{{ route('report.sales') }}'><span>Sales</span></a></li>
                <li><a href='{{ route('report.account') }}'><span>Account Summary</span></a></li>
              </ul>         
          </li>
         @if(Auth::user()->level <= 2)

         <li class="treeview">
             <a href="#"><i class="fa fa-gear"></i> <span>System</span>
               <span class="pull-right-container">
                 <i class="fa fa-angle-left pull-right"></i>
               </span>
             </a>
             <ul class="treeview-menu">
               <li><a href=''><span>Settings</span></a></li>
               <li><a href=''><span>Profile</span></a></li>
               <li><a href='{{ route("admin.users") }}'><span>Users</span></a></li>

             </ul>         
         </li>

         @endif


        <!--
            
            <li><a href=''><i class="fa fa-user"></i> <span>Customers</span></a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-calendar-check-o"></i> <span>Plan</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href=''><span>Monthly Plan</span></a></li>
                <li><a href=''><span>Misc</span></a></li>
                
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-book"></i> <span>Billing</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href=''>Generate</a></li>
                <li><a href=''>SMS</a></li>
                <li><a href=''>Summary Report</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-gears"></i> <span>Settings</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href=''>System</a></li>
                <li><a href=''>Notifications</a></li>
              </ul>
            </li>



        -->
        </ul>
        <!-- /.sidebar-menu -->
      </section>
      <!-- /.sidebar -->
    </aside>