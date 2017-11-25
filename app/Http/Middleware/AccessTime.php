<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

use Illuminate\Session\Middleware\AuthenticateSession as AuthSession;

class AccessTime extends AuthSession
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

}
