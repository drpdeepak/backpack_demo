<?php
namespace App\Http\Controllers;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Product;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Session;
use Redirect;
class CartController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function addItem ($productId=NULL){

    	//dd($productId);
        if(empty(Auth::user()->id)){
            return redirect('login');
        }
        $cart = Cart::where('user_id',Auth::user()->id)->first();

        if(!$cart){
            $cart =  new Cart();
            $cart->user_id=Auth::user()->id;
            $cart->save();
        }

        $cartItem  = new Cartitem();
        $cartItem->product_id=$productId;
        $cartItem->cart_id= $cart->id;
        $cartItem->save();

        Session::flash('success_message', 'Your item successfully added into Cart');
        //return redirect('/cart');
       // return redirect('/password/reset');
        return Redirect::back();
        //return view('pages.cartview',['items'=>$items,'total'=>$total]);
       // return redirect('/cart');

    }

    public function showCart(){
        if(empty(Auth::user()->id)){
            return redirect('login');
        }
        $cart = Cart::where('user_id',Auth::user()->id)->first();

        if(!$cart){
            $cart =  new Cart();
            $cart->user_id=Auth::user()->id;
            $cart->save();
        }

        $items = $cart->cartItems;
        $total=0;
        foreach($items as $item){
            $total+=$item->product->price;
        }

       // dd($cart);
        return view('pages.cartview',['items'=>$items,'total'=>$total,'cart'=>$cart]);
    }

    public function removeItem($id){
        if(empty(Auth::user()->id)){
            return redirect('login');
        }
        CartItem::destroy($id);
        return redirect('viewcart');
    }

}
