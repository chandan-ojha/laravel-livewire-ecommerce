<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthAdmin
{
    /**
     * Handle an incoming request.
     *
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (Auth::user()->utype === 'ADM') {
            return $next($request);
        } else {
            session()->flush();

            return redirect()->route('login');
        }

        return $next($request);
    }
}
