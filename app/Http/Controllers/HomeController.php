<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use App\Slider;
use App\Models\IndiaState;
use App\Models\IndiaCity;
use App\Testimonial;
use App\ContactLead;
use App\Models\Advertisement;
use Backpack\PageManager\app\Models\Page;
use Validator;
use Mail;
use DB;

class HomeController extends Controller
{

     public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/

    }
    public function index(Request $request)
    {
            $sliderdata = Slider::get();
            $testimonial = Testimonial::get();

           $homepage = Page::findBySlug('/');
           $advertisement = Advertisement::where('end_date','>=',date('Y-m-d'))->first();
            //dd($advertisement);
           // $homepage->withFakes();
           // $dailyschedule=DB::table('articles')->get();
           // $extrafield = json_decode($homepage->extras, true);

           // $this->data['title'] = $page->title;
            //$this->data['page'] = $page->withFakes();

            return view('index', compact('sliderdata','testimonial','homepage','extrafield','advertisement'));

    }


     public function livedarshans(Request $request)
    {
           
            $homepage = Page::findBySlug('/');
            $homepage->withFakes();
            $dailyschedule=DB::table('livedarshan')->first();
            $extrafield = json_decode($homepage->extras, true);

         return view('pages.livedarshan', compact('homepage','extrafield','dailyschedule'));

    }


     public function booknow(Request $request)
    {
           
            $states = IndiaState::where('active',1)->pluck('name','id');
            $city = IndiaCity::where('state_id',29)->pluck('name','name');
          
          //dd($states);
         return view('pages.bookprasad', compact('homepage','states','city'));

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