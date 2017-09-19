<?php
namespace App\Http\Controllers;
use App\Model\Gallery;
use App\Model\Album;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Session;
use DB;
use Redirect;
use Hash;
class GalleryController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

    public function index($slug=null)
    {

        $album= DB::table('albums')->where('slug',$slug)->first();
      
       if(!empty($album)){
        $allphotos=DB::table('galleries')->where('album_id',$album->id)->get();
        }
        else{
           $allphotos=""; 
           $album="";
        }
        $allalbums=DB::table('albums')->get();

        //dd($allphotos);

      return view('pages.gallery', compact('allphotos','allalbums','album'));
    }

    public function viewdetails($id=null)
    {
       // $brands= DB::table('brands')->where('slug',$slug)->first();
       
        $product=DB::table('products')->where('id',$id)->first();
        $allbrands=DB::table('brands')->get();
        $allpcategory=DB::table('products_categories')->get();

        
        return view('pages.shopdetails', compact('product','allbrands','allpcategory'));
           
     
    }



    public function register(Request $request)
    {

             $input = $request->all();

             $user_model_fqn = config('backpack.base.user_model_fqn');
             $user = new $user_model_fqn();
             $users_table = $user->getTable();
            $this->validate($request, [
                 'fname'     => 'required|max:255',
                 'postcode'     => 'required|max:255',
                 'email'    => 'required|email|max:255|unique:'.$users_table,
                 'g-recaptcha-response' => 'required|captcha'
            ]);

            $password = 'urbanstaff2017';  //Static Password for User

               // To Save Data into User Table

            $user_data =  $user->create([
                'name'     => $request['fname'].' '.$request['lname'] ,
                'email'    => $request['email'],
                'password' => bcrypt($password),
             ])->assignRole('Subscriber');
            $userid = $user_data->id;
            if(!empty($userid)){

                 // To Save Data into Meta User Table

                $user_meta = new MetaUser;
                $user_meta->user_id = $userid;
                $user_meta->fname = $request['fname'];
                $user_meta->reg_no = '000'.$userid;
                $user_meta->national_insurance = $request['national_insurance'];
                $user_meta->lname = $request['lname'];
                $user_meta->mobile = $request['mobile'];
                $user_meta->postcode = $request['postcode'];
                $user_meta->brief_message = $request['brief_message'];
                $user_meta->save();

                // To Send a Email copy to User 

                Mail::send('emails.register', ['user' => $request], function ($message) use ($request)
                {
                    $message->from('info@urbanstaffsolutions.co.uk', 'URBAN STAFF');
                    $message->to($request['email'])->subject('User Sign Up');
                });

                // To Send a Email copy to Admin 
               // $email_ids = array('alkabagga@gmail.com', 'deepak.parihar@planetwebsolution.com');

                Mail::send('emails.adminregister', ['user' => $request], function ($message) use ($request)
                {
                    $message->from('info@urbanstaffsolutions.co.uk', 'URBAN STAFF');
                    $message->to('alkabagga@gmail.com')->subject('User Sign Up Info');
                });

            }
        return Redirect::to('thank-you');
        //return redirect()->route('thank-you');
            // return view('user.login');
     
    }

/* Function for update user profile
       Author: Deepak Parihar
       Create:  26-5-2017 
       Update time :  */

    public function updateprofile(Request $request)
    {

           
            return redirect()->back();
             //return redirect('user/editprofile');

                  
     
    }
  /* Function for edit user profile
       Author: Deepak Parihar
       Create:  25-5-2017 
       Update time :  */

    public function editprofile()
    {


        if (Auth::check()) {
            $userinfo= User::where('id', Auth::user()->id);  
            $userinfo  = DB::table('users')
           ->select('users.id as userid','users.*','roles.name as role','meta_users.id as metaid','meta_users.*')
           ->join('role_users' , 'role_users.user_id' , '=' , 'users.id')
           ->join('roles' , 'roles.id' , '=' , 'role_users.role_id')
           ->join('meta_users' , 'users.id' , '=' , 'meta_users.user_id')
           ->where('users.id','=',Auth::user()->id)->first();
            }
     //dd($userinfo);

        return view('user.editprofile', compact('userinfo'));
                  
    }

    /* Function for view user profile in admin panel
       Author: Deepak Parihar
       Create:  29-5-2017 
       Update time :  */

     public function profileview($id=NULL)
    {
        if (Auth::check()) {
            $userinfo= User::where('id', $id);  
            $userinfo  = DB::table('users')
           ->select('users.id as userid','users.*','roles.name as role','meta_users.id as metaid','meta_users.*')
           ->join('role_users' , 'role_users.user_id' , '=' , 'users.id')
           ->join('roles' , 'roles.id' , '=' , 'role_users.role_id')
           ->join('meta_users' , 'users.id' , '=' , 'meta_users.user_id')
           ->where('users.id','=',$id)->first();
            }
        
       // dd($userinfo);

        return view('user.profileview', compact('userinfo'));
                  
    }

}
