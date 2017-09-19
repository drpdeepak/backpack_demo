@extends('layouts/layout_home')
@section('content')
 
<div class="inner-page-banner">
    <div class="container">
      <h1>Checkout Page</h1>
    </div>
  </div>
 <div class="inner-page-container testimonial-page">
    <div class="container" style="background-color: #fff; padding-top: 50px">
         <div class="row">
      <div class="col-md-4 col-sm-12 well">

      <h1>{{$product->name}}</h1>
      <img src="{{ url('/')}}/{{$product->image1}}" class="img img-responsive thumbnail">
      <h4>Price: {{$product->price}} /Day</h4>
      <p>Address: {{$product->address}}</p>
       <p>Email: {{$product->email}}</p>
       <p>Contact: {{$product->contact}}</p>
      </div>
      <div class="col-md-8 col-sm-12">
     <form method="POST" action="{{url('paymentrequest')}}">
     <input type="hidden" name="amount" value="{{$product->price}}" id="newamount" />
     <input type="hidden" name="productinfo" value="{{$product->name}}" />
    <input type="hidden" name="_token" value="{{ csrf_token() }}">

     <form action="" method="post" name="payuForm">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">  
        <input type="hidden" name="product_id" value="{{$product->id}}">      
       <input type="hidden" name="country" value="India" />
    
    
    <input type="hidden" name="no_of_item" id="totalphoto" value="1" />
        

            <label>First Name</label> 
            <input name="firstname" id="firstname" value="" class = 'form-control' type="text" /> 
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Last Name</label>           
            <input name="lastname" id="lastname" value="" class = 'form-control' type="text" />            
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>Email</label>
            <input name="email" id="email" value="" class = 'form-control' type="email" />            
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Phone</label>
            <input name="phone" value=""  class = 'form-control' type="text"  />           
                        
            </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Check-In</label>
           <input type="text" id="Date"  name="checkin" class="form-control" placeholder="Select Date">         
                        
            </div>
            </div>


            <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Check-Out</label>
            <input type="text" id="Date1"  name="checkout" class="form-control" placeholder="Select Date">          
                        
            </div>
            </div>


          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Address</label> 
            <input name="address1" value="" class = 'form-control' type="text"  />          
          
            </div>
            </div>
          
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>Zip Code</label> 
            <input name="zipcode" value="" class = 'form-control' type="text" />
            </div>
                          
            </div>
        
         
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>State</label> 
            <input name="state" value="Rajasthan" class = 'form-control' type="text" readonly />           
            
            </div>
            </div>
          
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>City</label>  
            <input name="city" value="Jaipur" class = 'form-control' type="text" readonly />           
           
            </div>
                          
           
          </div>
        
  <div class="col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
    
    
              <div class="button-wrap">
            <button type="submit" class="btn btn-primary" style='padding:8px 20px;'>Pay Now</button>
           <button type="reset" class="btn btn-info" style='padding:8px 20px;'>Cancel</button>
       <br/>
        
          </div><br/>
        
          </div>
        
  </div></form></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
             
     </div>
      </div>
    </div>
<br/><br/>
      
@stop