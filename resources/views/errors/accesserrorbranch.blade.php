@include('main.sources.css')


    <!-- Main content -->
    <section class="content">

      <div class="error-page">
        <h2 class="headline text-red">{{ config('app.name') }}</h2>
       

        <div class="error-content">
          <h3><i class="fa fa-warning text-red"></i>Your computer is not recognized.</h3>
          <p>
            Please ask for an access key from your server admin.
          </p>
          
          <form action='{{ route("authbranch") }}' method="get">
            

       
            <div class="form-group">
                
                <label class="label-default">Key</label>
                <input type="text" class="form-control" name="accesskey">

            </div>

            {{ csrf_field() }}
            <button type="submit">Request Access</button>

          </form>



        </div>
      </div>
      <!-- /.error-page -->




    </section>
