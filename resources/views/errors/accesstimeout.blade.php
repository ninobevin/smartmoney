@include('main.sources.css')


    <!-- Main content -->
    <section class="content">

      <div class="error-page">
        <h2 class="headline text-red">{{ config('app.name') }}</h2>
       

        <div class="error-content">
          <h3><i class="fa fa-warning text-red"></i>For security purpose your account was automatically logout due to inactivity.</h3>
          <p>
            <a href="{{ url('/') }}">Please click here to login.</a>
          </p>
          
       



        </div>
      </div>
      <!-- /.error-page -->




    </section>
