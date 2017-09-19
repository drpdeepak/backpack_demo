<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use App\User;
use App\Diary;
use Mail;
use DB;
use Validator;
use Session;



class DiaryController extends Controller
{

     public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/

    }
    public function index($id=NULL)
    {
             $userinfo  = DB::table('diaries')->where("user_id",$id)->orderBy('id', 'desc')->get();
           

         return view('user.diary_log', compact('userinfo','id'));

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




     public function deletenotes(Request $request)
    {
         $input = $request->all();

      	$diaries = Diary::find($input['id']);    
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