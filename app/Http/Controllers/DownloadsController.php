<?php
namespace App\Http\Controllers;
use App\Models\Downloads;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateSongRequest;
use Validator;
use DB;
use Redirect;
use Hash;
class DownloadsController extends Controller
{

    protected $data = []; // the information we send to the view


    public function __construct()
    {
       
    }

    public function index()
    {
        if(isset($slug)){
        $brands= DB::table('downloads')->where('slug',$slug)->get();
        }else{
        $brands= DB::table('downloads')->get();
        }
      
        return view('pages.downloads', compact('brands'));
           
     
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
    
}
