<?php


namespace App\Http\Controllers;
use App\MetaUser;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Illuminate\Foundation\Auth\RegistersUsers;
use Validator;

class DashboardController extends Controller
{ 
public function index() {
    $someVar = '';
    return view('user.dashboard', compact('someVar'));
}

}