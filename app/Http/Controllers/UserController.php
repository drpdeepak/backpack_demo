<?php
namespace App\Http\Controllers;
use App\MetaUser;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Illuminate\Foundation\Auth\RegistersUsers;
use Intervention\Image\Facades\Image;
use Validator;
use Session;
use DB;
use Mail;
use Redirect;
use Hash;
class UserController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       /* $this->middleware('DemoAdmin', ['only' => ['delete', 'addnew']]);

        parent::__construct();*/
      
    }

    public function index(Request $request)
    {

            if (Auth::check()) {

                return redirect()->route('user');

            }else{
              return view('user.register');
            }
            die();
     
    }

            /**
         * Get the error messages for the defined validation rules.
         *
         * @return array
         */
        public function messages()
        {
            return [
                'fname.required' => 'A title is required'
               
            ];
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
                // 'g-recaptcha-response' => 'required|captcha'
            ]);

            $password = '123456';  //Static Password for User

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
                $user_meta->dob = $request['dob'];
                $user_meta->brief_message = $request['brief_message'];
                $user_meta->save();

                // To Send a Email copy to User 

                Mail::send('emails.register', ['user' => $request], function ($message) use ($request)
                {
                    $message->from('matrixcomputerjaipur@gmail.com', 'SALASAR BALAJI');
                    $message->to($request['email'])->subject('User Sign Up');
                });

                Mail::send('emails.adminregister', ['user' => $request], function ($message) use ($request)
                {
                    $message->from('matrixcomputerjaipur@gmail.com', 'URBAN STAFF');
                    $message->to('matrixcomputerjaipur@gmail.com')->subject('User Sign Up Info');
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

            $input = $request->all();
           
            $destinationPath = public_path('/uploads/meta_users/');

            if(!empty($input['author_image']))
            { $author_image = $request->file('author_image');
            $input['author_image'] = time().'.'.$author_image->getClientOriginalExtension();
            $author_image->move($destinationPath, $input['author_image']); }
            else { $input['author_image'] = $input['old_author_image']; }
            $id=$input['id'];
           //
            $user_data = User::findOrFail($id);
            $user_data->name = $input['fname'];
            $user_data->save();

          // echo "<pre>";
         //  print_r($input); die;

            $userid = $input['metaid'];
            if(!empty($userid)){
                $user_meta = MetaUser::findOrFail($userid);
                $user_meta->user_id = $id;
                $user_meta->fname = $input['fname'];
                if(!empty($input['dob'])){
                $user_meta->dob = date("Y-m-d",strtotime($input['dob']));
                 }
                $user_meta->mobile = $input['mobile']?$input['mobile']:'';
                $user_meta->postcode = $input['postcode']?$input['postcode']:'';
                $user_meta->birth_place = $input['birth_place']; 
                $user_meta->land_line = $input['land_line'];
                $user_meta->address1 = $input['address1'];     
                $user_meta->author_image = $input['author_image'];
                $user_meta->save();
                Session::flash('success_message', 'Your profile has been updated successfully!');
            }
            else {
                 Session::flash('error_message', 'Something went wrong! Please try again');
            }
            
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

    
    public function login(Request $request){

         if (Auth::check()) {

                return redirect()->route('home');

            }else{
              return view('user.login');
            }
            die();


    }

    public function userlogin(Request $request)
    {   
         $input = $request->all();

         $this->validate($request, [

        'email' => 'required|between:3,64|email',
        'password' => 'required|between:6,20',
      ]);


        if (Auth::attempt(['email' => $input['email'], 'password' => $input['password'],'active' => 1])) {
            // Authentication passed...
   
                $user = Auth::user(); 
              if($user->hasRole(['Administrator'])){
                return redirect()->intended('admin/dashboard');
              }else{
               return redirect('user/dashboard');
              }

        }else{

              Session::flash('error_message', 'Invalid Username / Password');
                       return redirect('login');
              // echo  $rr = route('login');

              
        }

    }

     public function logout() {
        Auth::logout();
        return redirect('/');
    }

    public function disabledFeature(){


         return response(view('error.404'), 404);
    }

    /**
     * Handles change password ,
     * match old password and update new password.
     *
      @param array $request Name of method to call.
     * @return json response by called method
     */
    public function resetpassword(Request $request){

       
            return view('user.resetpassword');

            }

    /**
     * Handles change password ,
     * match old password and update new password.
     *
      @param array $request Name of method to call.
     * @return json response by called method
     */
    public function restpasswodsubmit( Request $request){        

        $this->validate($request, [
            'email' => 'required|between:3,64',
        ]);

        $email = $request->email;
        $_token = $request->_token;

        $forgot_result = User::where('email', '=', $email)->first();

        if($forgot_result){
            $forgot_data = array(
                'name' => $forgot_result->name,
                'email' => $forgot_result->email,
                '_token' => $_token
                );
        $forgot_result->remember_token = $_token;
        $forgot_result->save();
        //$admin_mail = DB::table('users')->where('id',1)->select('admin_email')->first();
        $mail_admin = 'matrixcomputerjaipur@gmail.com';
        Mail::send('emails.forgotpassword', array('users' => $forgot_data), function( $message ) use ($forgot_data,$mail_admin) {
                $message->from($mail_admin);
                $message->to($forgot_data['email'])->subject('Reset Password Notification');
            });
            Session::flash('success_message', 'We have e-mailed your password reset link!');
            return redirect('/password/reset');
        } else {
            Session::flash('error_message', "We can't find a user with that e-mail address.");
            return redirect('/password/reset');
        }
    }

    /**
     * Handles change password ,
     * match old password and update new password.
     *
      @param array $request Name of method to call.
     * @return json response by called method
     */

    public function changeforgotpassword_token($_token) {

         if (!$_token) {
            throw new InvalidConfirmationCodeException;
        }

        return view('user.forgot_password_confirm',compact('_token'));
    }

      /**
     * Handles change password ,
     * match old password and update new password.
     *
      @param array $request Name of method to call.
     * @return json response by called method
     */
   
    public function changeforgotpassword(Request $request) {

             $user_model_fqn = config('backpack.base.user_model_fqn');
             $user = new $user_model_fqn();
             $users_table = $user->getTable();

            $this->validate($request, [
                 'email'    => 'required|email|max:255|exists:'.$users_table,
                 'password' => 'required|between:6,20|confirmed',
                 'password_confirmation' => 'same:password',
            ]);
       
        $_token = $request->token_db;
        $record_user_password = User::where('remember_token',$_token)->first();

        if(!empty($record_user_password)){

        $password = Hash::make($request->password);
        DB::table('users')->where('remember_token',$_token)->update(['password'=>$password]);


        $record_user_password->save();
        Session::flash('success_message', 'Your Password has been changed.');
        return Redirect::to('/login');}else{
            Session::flash('error_message', 'You reset password token mismatch.');
            return Redirect::back();
        }
    }


    public function approved(Request $request, $user_id){

        if($user_id != 1){
           $user_id;
           $pass=md5(time());
           $new_password=substr($pass,0,8);
           
            DB::table('users')
            ->where('id', $user_id)
            ->update(['active' => 1,'password'=>bcrypt($new_password)]);

            $users = DB::table('users')->where('id',$user_id)->first();
          
            Mail::send('emails.approve', array('user' =>$users,'password'=>$new_password), function ($message) use ($users)
             {
                $message->from('matrixcomputerjaipur@gmail.com', 'SALASAR BALAJI');
                $message->to($users->email)->subject('Account Approved');
             });
          }  

         return Redirect::to('/admin/user');   
       

        die();

    }

    public function unapproved(Request $request, $user_id){
         if($user_id != 1){
           $user_id;
            DB::table('users')
            ->where('id', $user_id)
            ->update(['active' => 0]);
           } 
        return Redirect::to('/admin/user');   
       
        die();

    }



    


}
