<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use App\User;
use App\Models\Order;
use Mail;
use DB;
use Validator;
use Session;



class OrderController extends Controller
{

     public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/

    }
    public function index()
    {
             $userinfo  = DB::table('orders')->where("payuMoneyId",'!=','')->orderBy('id', 'desc')->get();
           
            // dd($userinfo);
         return view('user.orders', compact('userinfo'));

    }

   

     public function savenewnotes(Request $request)
    {
         $input = $request->all();

          $this->validate($request, [
                 'notes'     => 'required|max:255',
                 'user_id'    => 'required'
            ]);


        $diaries = new Diary;
        $diaries->notes = $input['notes'];
        $diaries->user_id = $input['user_id'];
        $diaries->status = 1;
        $diaries->active = 1;


       // $diaries->save();
        if($diaries->save()){
           Session::flash('success_message', 'New notes save successfully');
        }
        else{
            Session::flash('error_message', 'Something went wrong! Please try again');
        }
        return redirect()->back();
    }





  public function updatenotes(Request $request)
    {
         $input = $request->all();

          $this->validate($request, [
                 'notes'     => 'required|max:255',
                 'user_id'    => 'required'
            ]);

        $diaries = Diary::find($input['id']);  
        $diaries->notes = $input['notes'];

        if($diaries->save()){
         echo 1; 
        }
        else{
           echo 0;
        }
    }




     public function deleteorder(Request $request)
    {
         $input = $request->all();

        // dd($input);
      	$diaries = Order::find($input['id']);    
		//$diaries->delete();
       // $diaries->save();
        if($diaries->delete()){
          echo 1; 
        }
        else{
           echo 0;
        }
    }

}