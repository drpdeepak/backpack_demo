<?php
namespace App\Http\Controllers;
use App\Models\ProductCategory;
use App\Models\Product;
use App\Models\Brand;
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
class ProductController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

    public function index($slug=null)
    {
        $brands= DB::table('brands')->where('slug',$slug)->first();
       if(!empty($brands)){
        $allproduct=DB::table('products')->where('brand_id',$brands->id)->get();
        }
        else{
           $allproduct=""; 
        }
        $allbrands=DB::table('brands')->get();
        $allpcategory=DB::table('products_categories')->get();
      
        return view('pages.shop', compact('allproduct','allbrands','allpcategory','brands'));
           
     
    }

    public function viewdetails($id=null)
    {
       // $brands= DB::table('brands')->where('slug',$slug)->first();
       
        $product=DB::table('products')->where('id',$id)->first();
        $allbrands=DB::table('brands')->get();
        //$allpcategory=DB::table('products')->get();
        $allproduct=DB::table('products')->take(4)->get();
        
        return view('pages.shopdetails', compact('product','allbrands','allpcategory','allproduct'));
           
     
    }


     public function shopsbycat($slug=null)
    {
        $brands= DB::table('brands')->where('slug',$slug)->first();
       if(!empty($brands)){
        $allproduct=DB::table('products')->where('brand_id',$brands->id)->get();
        }
        else{
           $allproduct=""; 
        }
        $allbrands=DB::table('brands')->get();
        $allpcategory=Brand::get();

        return view('pages.shop', compact('allproduct','allpcategory','allbrands'));
           
     
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


}
