<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Backpack\PageManager\app\Models\Page;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Models\Product;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Order;
use App\Models\Hotel;
use App\Models\Cab;
use Session;
use Redirect;
use Mail;
use DB;
use URL;

class PaymentController extends Controller
{

    protected $parameters = array();
    protected $testMode = false;
    protected $merchantKey = '';
    protected $salt = '';
    protected $hash = '';
    protected $liveEndPoint = 'https://secure.payu.in/_payment';
    protected $testEndPoint = 'https://test.payu.in/_payment';
    public $response = '';
    function __construct()
    {
        $urls=URL::to('/');
        $this->merchantKey = 'CsIYD2wj';
        $this->salt = '8wGJtIbbnW';
        $this->testMode = 'https://test.payu.in/_payment';
        $this->parameters['key'] = $this->merchantKey;
       // $this->parameters['SALT'] = $this->salt;
        $this->parameters['txnid'] = $this->generateTransactionID();
        $this->parameters['surl'] = $urls.'/success';
        $this->parameters['furl'] = $urls.'/failure';
        $this->parameters['curl'] = $urls;
        $this->parameters['service_provider'] = 'payu_paisa';
    }

   
     public function payment($id=NULL)
    {

        $title="Payment Page";
       
        if(!empty($id)){
             $product=Product::where('id',$id)->first();
        }
         return view('pages.payment_form', compact('title','product'));

    }

      public function servicepayment($id=NULL,$type=NULL)
    {
     // echo $id;
       // dd($type);
        $title="Booking Form";
       
        if(!empty($id) && !empty($type)){
              if($type=="hotels"){
                $product=Hotel::where('id',$id)->first();
                return view('pages.payment_otherform', compact('title','product'));
              }
              if($type=="cab"){
                $product=Cab::where('id',$id)->first();
                return view('pages.payment_cabform', compact('title','product'));
              }
             
        }
        //dd($product);
         

    }


      public function cartpayment($id=NULL)
    {
        $title="Payment Page";
       
        if(!empty($id)){
      
          $cartitem= DB::table('cart_items')->where('cart_id',$id)->get();
          $total=0;
          $all=array();
          $productinfo="";
          foreach ($cartitem as $key => $items) {
            $products=Product::where('id',$items->product_id)->first();
           // dd($product);
            $productinfo .= $products->name.",";

            $total+=$products->price;
          }
        }
          $all['name']=rtrim($productinfo,',');
           $all['id']=$products->id;
          $all['price']=$total;
          $product=(object)$all;
          //dd($product);
         return view('pages.payment_form', compact('title','product'));

    }



    public function generateTransactionID()
    {
        return substr(hash('sha256', mt_rand() . microtime()), 0, 20);
    }


     public function paymentrequest(Request $request)
    {
        $all=$request->all();
        if(isset($all['checkin']) && isset($all['checkout'])){
       // $all['productinfo']=$all['productinfo'].','.$all['checkin'].','.$all['checkout'];
        $all['productinfo'] = json_encode(json_decode('[{"product":"'.$all['productinfo'].'",
          "checkin":"'.$all['checkin'].'","checkout":"'.$all['checkout'].'"}]'));
      }

         if(isset($all['pickdate']) && isset($all['picktime'])){
        //$all['productinfo']=$all['productinfo'].','.$all['pickdate'].','.$all['picktime'];}
        $all['productinfo'] = json_encode(json_decode('[{"product":"'.$all['productinfo'].'",
          "pickdate":"'.$all['pickdate'].'","picktime":"'.$all['picktime'].'"}]'));
       }

        $this->parameters = array_merge($this->parameters,$all);
       //dd($this->parameters);
         $hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
         
            $hashVarsSeq = explode('|', $hashSequence);
            $hash_string = '';  
            foreach($hashVarsSeq as $hash_var) {
                $hash_string .= isset($this->parameters[$hash_var]) ? $this->parameters[$hash_var] : '';
                $hash_string .= '|';
             }
            
            $hash_string .= $this->salt;
            $hash = strtolower(hash('sha512', $hash_string));

            $postData=$this->parameters;
            $postData['hash']=$hash;
            return view('pages.redirect', compact('title','postData'));
    }


    public function getEndPoint()
    {
        return $this->testMode?$this->testEndPoint:$this->liveEndPoint;
    }

        /**
     * @return mixed
     */
    public function send()
    {
        Log::info('Indipay Payment Request Initiated: ');
        return View::make('indipay::payumoney')->with('hash',$this->hash)
                             ->with('parameters',$this->parameters)
                             ->with('endPoint',$this->getEndPoint());
    }

    /**
     * Check Response
     * @param $request
     * @return array
     */
    public function response($request)
    {
        $response = $request->all();
        $response_hash = $this->decrypt($response);
        if($response_hash!=$response['hash']){
            return 'Hash Mismatch Error';
        }
        return $response;
    }


    
      /**
     * @param $parameters
     * @throws IndipayParametersMissingException
     */
    public function checkParameters($parameters)
    {
        $validator = Validator::make($parameters, [
            'key' => 'required',
            'txnid' => 'required',
            'surl' => 'required|url',
            'furl' => 'required|url',
            'firstname' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'productinfo' => 'required',
            'service_provider' => 'required',
            'amount' => 'required|numeric',
        ]);
        if ($validator->fails()) {
            throw new IndipayParametersMissingException;
        }
    }

    /**
     * @param $parameters
     * @throws IndipayParametersMissingException
     */

    protected function encrypt()
    {
        $this->hash = '';
        $hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
        $hashVarsSeq = explode('|', $hashSequence);
        $hash_string = '';
        foreach($hashVarsSeq as $hash_var) {
            $hash_string .= isset($this->parameters[$hash_var]) ? $this->parameters[$hash_var] : '';
            $hash_string .= '|';
        }
        $hash_string .= $this->salt;
        $this->hash = strtolower(hash('sha512', $hash_string));
        return $this->hash;
    }


        /**
     * PayUMoney Decrypt Function
     *
     * @param $plainText
     * @param $key
     * @return string
     */
    protected function decrypt($response)
    {
        $hashSequence = "status||||||udf5|udf4|udf3|udf2|udf1|email|firstname|productinfo|amount|txnid|key";
        $hashVarsSeq = explode('|', $hashSequence);
        $hash_string = $this->salt."|";
        foreach($hashVarsSeq as $hash_var) {
            $hash_string .= isset($response[$hash_var]) ? $response[$hash_var] : '';
            $hash_string .= '|';
        }
        $hash_string = trim($hash_string,'|');
        return strtolower(hash('sha512', $hash_string));
    }


    public function failure() {
       
        $title="Failure Page";
         return view('pages.failure', compact('title'));
    }



    
    public function success() {
       
        $title="Success Page";
         
       // dd($_REQUEST);
     
        if(!empty($_REQUEST)){
                $cart =  new Order();
                $cart->mihpayid=$_REQUEST['mihpayid'];
                $cart->amount=$_REQUEST['amount'];
                $cart->status=$_REQUEST['status'];
                $cart->cardnum=$_REQUEST['cardnum']; 
                $cart->payuMoneyId=$_REQUEST['payuMoneyId'];
                $cart->mode=$_REQUEST['mode'];
                $cart->city=$_REQUEST['city'];  
                $cart->email=$_REQUEST['email'];
                $cart->phone=$_REQUEST['phone'];
                $cart->bankcode=$_REQUEST['bankcode'];
                $cart->address1=$_REQUEST['address1'];  
                $cart->discount=$_REQUEST['discount'];
                $cart->email=$_REQUEST['email'];  
                $cart->firstname=$_REQUEST['firstname'];  
                $cart->productinfo= $_REQUEST['productinfo'];  
                $cart->save(); 
        }
        return view('pages.success', compact('title'));
    }
}