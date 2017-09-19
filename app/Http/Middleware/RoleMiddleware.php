<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
   public function handle($request, Closure $next, $role, $permission)
{
  /*  if (Auth::guest()) {
        return redirect($urlOfYourLoginPage);
    }
    if (! $request->user()->hasRole('Administrator')) {
       return $next($request);
    }
    
    if (! $request->user()->can($permission)) {
       abort(404);
    }
    return $next($request);*/

     if ($request->is('admin/*')) {
      if (!$request->user()->hasRole('Administrator')) { 
        return redirect('404'); }
         } 
         return $next($request);
      }

}
