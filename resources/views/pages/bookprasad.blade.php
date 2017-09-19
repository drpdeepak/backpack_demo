@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>Book Now</h1>
    </div>
  </div>
  <style>
  .ratings {color: #d17581;}
  </style>
  <div class="inner-page-container testimonial-page">
    <div class="container">
         <div class="row">
            <div class="col-md-3">
                <div class="list-group">
              
                <a class="list-group-item active">Booking Types</a>

                    <a href="{{url('downloads-category')}}/Ebook" class="list-group-item"> Book Prasad </a>
                    <a href="{{url('downloads-category')}}/Music" class="list-group-item"> Book Pandit Ji</a>
                     <a href="{{url('downloads-category')}}/Music" class="list-group-item"> Book Programs</a>
                  
                </div>
            </div>

            <div class="col-md-9">

               
          <div class="col-md-12">   
            <div class="form-group">            
              <table class="table table-bordered">
            
                <tr><Th width="25%">Select Service: </Th>
                <td><select class="form-control" name="bookpandit">
                  <option value="">Select Service</option>
                  <option value="">Book PanditJi</option>
                  <option value="">Book Prasad</option>
                  <option value="">Book Programs</option>
                </select></td></tr> 
               
                <tr><Th>
                Tax: </Th>
                <td>N/A</td></tr>
                <tr><Th>
                Grand Total Amount: </Th>
                <td><div class="total"></div></td></tr> </table>         
            </div>
         
          </div>
     <form action="" method="post" name="payuForm">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">  
             
       <input type="hidden" name="country" value="India" />
     
     <input type="hidden" name="productinfo" value="Book Pandit">
   
    <input type="hidden" name="amount" value="" id="newamount" />
    <input type="hidden" name="oldamount" id="oldamount" value="" />
      
        <input type="hidden" name="totalphoto" id="totalphoto" value="0" />
          <input type="hidden" name="product_id" id="product_id" value="1" />

        
    <label>First Name</label> 
            <input name="firstname" id="firstname" placeholder="First Name" class = 'form-control' type="text" required pattern="[a-zA-Z\s]+" /> 
           
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Last Name</label>           
          
            <input name="lastname" id="lastname" placeholder="Last Name" class = 'form-control' type="text" required pattern="[a-zA-Z\s]+" />            
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>Email</label>
            <input name="email" id="email" placeholder="Email" class = 'form-control' type="email" required /> 
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Phone</label>
            <input name="phone" placeholder="9434543344"  class = 'form-control' type="text" required pattern="[0-9]{10,10}" />           
        <div class="error-message" style="font-weight:normal;">
              <div class="error_message"></div>
            </div>
            </div>
          </div>

          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>Address</label> 
            <input name="address1" placeholder="12 Surya Nagar" class = 'form-control' type="text" required pattern="[a-zA-Z\s]+"  />
                         <div class="error-message" style="font-weight:normal;">
              <div class="error_message"></div>
            </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>Zip Code</label> 
            <input name="zipcode" placeholder="122444" class = 'form-control' type="text" required pattern="[0-9]{5,6}" />
           <div class="error-message" style="font-weight:normal;">
              <div class="error_message"></div>
            </div>
                          
            </div>
          </div>
         
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group"> 
            <label>State</label> 
            <input type="text" name="state" value="Rajasthan" readonly="true" class="form-control">
              <div class="error-message" style="font-weight:normal;">
            </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
            <label>City</label>  
            <select class="form-control" name="city">
             @foreach($city as $k=> $scity)
            <option value="{{$k}}">{{$scity}}</option>
            @endforeach           
           </select>
           <div class="error-message" style="font-weight:normal;">
              <div class="error_message"></div>
            </div>
                          
           
          </div>
          </div>
      
  <div class="col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
    
    
              <div class="button-wrap">
            <button type="submit" class="btn btn-primary" style='padding:8px 20px;'>Pay Now</button>
           <button type="reset" class="btn btn-primary" style='padding:8px 20px;'>Cancel</button>
       <br/>
        
          </div><br/>
        
          </div>
      </form>
  </div>
    <div class="col-md-12 col-sm-12 col-xs-12">
             
     </div>
      </div>
                

            </div>
          
        </div>
    </div>    
  </div>   
@stop