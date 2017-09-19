<?php 

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use DB;
use Redirect;
use PDF;

class PdfController extends Controller
{
   /* public function index()
    {
        $data = DB::table("users")->first();
        return view('pdf.index')->with('data',$data);
    }*/
    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

 
    public function download($id=NULL)
    {
      
         $userinfo  = DB::table('users')
           ->select('users.id as userid','users.*','roles.name as role','meta_users.id as metaid','meta_users.*')
           ->join('role_users' , 'role_users.user_id' , '=' , 'users.id')
           ->join('roles' , 'roles.id' , '=' , 'role_users.role_id')
           ->join('meta_users' , 'users.id' , '=' , 'meta_users.user_id')
           ->where('users.id','=',$id)->first();
        view()->share('userinfo',$userinfo);
        $pdf = PDF::loadView('user.pdfviewdetail');
        $name = str_replace(' ', '_', $userinfo->name);
        return $pdf->download($name."_".$userinfo->reg_no);
        //return view('user.pdfviewdetail', compact('userinfo'));
    }
}