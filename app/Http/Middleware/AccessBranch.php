<?php

namespace App\Http\Middleware;

use Closure;
use \Illuminate\Support\Facades\Cookie;
use App\Branch;
use Auth;

class AccessBranch
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {


        if(Auth::check() && Auth::user()->status != 'Active'){

            return redirect('/');

        }

        
        if($request->cookie('keybranch')){


            $branch = Branch::where('key',$request->cookie('keybranch'))->get();

            if(count($branch) > 0){

                return $next($request);
                //return Redirect::secure($request->path());

            }else{


                return redirect(route('accessbranch'));
            }

        }

        $whitelist = array(
            '127.0.0.1',
            '::1'
        );

        if(in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
            
            $branch = Branch::where('main','1')->first();

            if(count($branch) > 0)
            {

                 return redirect('/')
                 ->withCookie('keybranch',$branch->key,2628000)
                 ->withCookie('branchname',$branch->branch_name,2628000)
                 ->withCookie('appkey',$branch->branch_no,2628000);
            }

             return $next($request);


        }



        return redirect(route('accessbranch'));
               
        
    }
}
