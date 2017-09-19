<?php
namespace App\Http\Controllers;
use App\Models\Cab;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Validator;
use Session;
use DB;
use Mail;
use Redirect;
use Hash;
class CabController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

    public function index($slug=null)
    {

        $allproduct=Cab::get();
      
        return view('pages.cabs', compact('allproduct'));
           
     
    }


    public function cabsbycat($slug=null)
    {
        
        $allproduct="";
        $allproduct=DB::table('cabs')->where('type',$slug)->get();

        return view('pages.cabs', compact('allproduct'));
           
     
    }



    public function viewdetails($id=null)
    {

        $product=DB::table('cabs')->where('id',$id)->first();
       // $allpcategory=HotelCategory::get();
        $allproduct=DB::table('cabs')->take(4)->get();
        return view('pages.cabdetails', compact('product','allproduct'));
            
    }


    public function bookform($id=null)
    {

        $product=DB::table('hotels')->where('id',$id)->first();
        $allpcategory=HotelCategory::get();
        $allproduct=DB::table('hotels')->get();
        return view('includes.book-form', compact('product','allproduct','allpcategory'));
            
    }



    public function formsubmit(Request $request)
    {
         $input = $request->all();

       //  echo '<pre>'; print_r($input); echo '</pre>'; die;

         $username = $input['fname'].' '.$input['lname'];

          $this->validate($request, [
                 'fname'     => 'required|max:255',
                 'email'    => 'required|email|max:255',
                 'comments'    => 'required'
            ]);

           $maildata = array(
            'fname' => $input['fname'],
            'lname' => $input['lname'],
            'email' => $input['email'],
            'comments' => $input['comments'],
            'callback' => $input['callback']?"Yes":"No",
         );

      Mail::send('emails.homepagemail', array('maildata' => $maildata), function($message)use($maildata)
        {
            $message->from('rakesh.rathore@planetwebsolution.com');
            $message->to('rakesh.rathore@planetwebsolution.com', $maildata['fname'])->subject('New enquiry');
        });


        $result['status']   =   true;
        $result['msg']      =   'success';

       /* $id = DB::table('contact_leads')->insertGetId(
         ['name' => $username,'email' => $input['email'], 'message' => $input['comments']]
        );*/

        $ContactLead = new ContactLead;
        $ContactLead->name = $username;
        $ContactLead->email = $input['email'];
        $ContactLead->message = $input['comments'];
        $ContactLead->callback = $input['callback'];
        $ContactLead->save();

        return json_encode($result);
         
         die;

         //\Session::flash('flash_message','Office successfully added.'); //<--FLASH MESSAGE

   // return redirect()->route('home');


    }

}
