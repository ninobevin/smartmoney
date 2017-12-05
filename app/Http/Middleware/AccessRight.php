<?php

namespace App\Http\Middleware;



use Closure;

use Auth;

class AccessRight
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
        if(Auth::check() && Auth::user()->status == 'Active'){

            if(Auth::user()->level <= 2){

                 
                 return $next($request);

            }else{


                return redirect(route('accessright'));
            }

        }
    }
}


