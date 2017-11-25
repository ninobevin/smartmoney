<?php

namespace App\Http\Middleware;

use Closure;
use \Illuminate\Support\Facades\Cookie;
use App\Branch;

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


        
        if($request->cookie('keybranch')){


            $branch = Branch::where('key',$request->cookie('keybranch'))->get();

            if(count($branch) > 0){

                return $next($request);
                //return Redirect::secure($request->path());

            }else{


                return redirect(route('accessbranch'));
            }

        }



        return redirect(route('accessbranch'));
               
        
    }
}
