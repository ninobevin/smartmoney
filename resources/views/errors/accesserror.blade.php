@include('main.sources.css')


    <!-- Main content -->
    <section class="content">

      <div class="error-page">
        <h2 class="headline text-red">{{ config('app.name') }}</h2>
       

        <div class="error-content">
          <h3><i class="fa fa-warning text-red"></i>Sorry,You are not permitted</h3>
          <p>
            You have to login with the right access:
            

          </p>
           <form id="logout-form" action="{{ route('logout') }}"
           method="POST" >
        <input type="submit" name="" value="Click here to Login">
                    {{ csrf_field() }}

                   
                   
                  </form>

        </div>
      </div>
      <!-- /.error-page -->




    </section>
