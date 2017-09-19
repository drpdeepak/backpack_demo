<?php
namespace App\Http\Controllers;
use App\Models\HotelCategory;
use App\Models\Hotel;
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
class HotelController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

    public function index($slug=null)
    {
       
        $allpcategory=HotelCategory::get();
        $allproduct=Hotel::get();
      
        return view('pages.hotel', compact('allproduct','allpcategory','brands'));
           
     
    }


    public function hotelsbycat($slug=null)
    {
        $brands= DB::table('hotel_categories')->where('slug',$slug)->first();
       if(!empty($brands)){
        $allproduct=DB::table('hotels')->where('hotel_categories_id',$brands->id)->get();
        }
        else{
           $allproduct=""; 
        }
        $allpcategory=HotelCategory::get();
       
      // dd($allpcategory);

        return view('pages.hotel', compact('allproduct','allpcategory'));
           
     
    }



    public function viewdetails($id=null)
    {

        $product=DB::table('hotels')->where('id',$id)->first();
        $allpcategory=HotelCategory::get();
        $allproduct=DB::table('hotels')->take(4)->get();
        return view('pages.hoteldetails', compact('product','allproduct','allpcategory'));
            
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
