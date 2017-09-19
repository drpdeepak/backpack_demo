<?php 
namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;

use App\Http\Requests;

use Backpack\Base\app\Http\Controllers\Auth\AuthController;


use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AuthController extends Backpack\Base\app\Http\Controllers\Auth\AuthController
{
  /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function authenticated()
    {
        if(auth()->user()->hasRole('admin'))
        {
            return redirect('/admin');
        } 

        return redirect('/admin');
    }


}