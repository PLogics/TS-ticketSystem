<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth()->check()){

            //admin role == 1
            //user role == 0

            if(auth()->user()->role == 'Admin'){
                return $next($request);
            }else{
                return redirect('/userindex');
                // ->with('message','Access Denied as you are not Admin');
            }
        }else{
            return redirect('/login')->with('message','Login to access the website info');
        }
        return $next($request);
    }
}
