
<div class="contact-us-form" id="formhome_page">
<div class="form-errors"></div>
  <h2>Leave us your info</h2>

  <span class="form-subtitle">and we will get back to you.</span>
  {!! Form::open(['action' => 'HomeController@formsubmit','method' => 'POST','class' => 'default-form','id' => 'homeform']) !!}
   <!-- {!! csrf_field() !!} -->
     <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <input type="text" id="fname" value="{{ old('fname') }}" name="fname" class="form-control" placeholder="First Name" required>
          
        </div>
         @if ($errors->has('fname'))
              <span class="help-block">
                  <strong>{{ $errors->first('fname') }}</strong>
              </span>
          @endif
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <input type="text" id="lname" name="lname" value="{{ old('lname') }}" class="form-control" placeholder="Last Name">
        </div>
      </div>
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="form-group">
          <input name="email" id="email" type="email" value="{{ old('email') }}" class="form-control" placeholder="Email Address" required>
        </div>
           @if ($errors->has('email'))
              <span class="help-block">
                  <strong>{{ $errors->first('email') }}</strong>
              </span>
          @endif
      </div>
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="form-group">
          <textarea name="comments" id="comments" placeholder="Comments" class="form-control">{{ old('comments') }}</textarea>
           
        </div>
         @if ($errors->has('comments'))
            <span class="help-block">
                <strong>{{ $errors->first('comments') }}</strong>
            </span>
        @endif
      </div>
<?php 
     if (\Request::is('/')) { ?>
    
 <div class="col-md-5 col-sm-5 col-xs-12">
     <?php }else { ?>
  
<div class="col-md-7 col-sm-7 col-xs-12">
     <?php } ?>
  
        <div class="form-group">
      {!! app('captcha')->display(); !!}
     <span id="captcha" style=" margin:0px;color:red" />
        </div>
        </div>

 <?php 
     if (\Request::is('/')) { ?>

    <div class="col-md-7 col-sm-7 col-xs-12">

     <?php }else { ?>

    <div class="col-md-5 col-sm-5 col-xs-12">

     <?php } ?>

         
      <!--   <div class="form-group">

        <div class="checkbox">
          <label><input name="call_request" id="call_request" type="checkbox" value="1" style="padding:10px; border:1px solid #DFDFDF; background-color: #FFF"> &nbsp;  Request call back</label>
        </div>
        </div> -->
      </div>


      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="form-group">
          <button type="submit" class="default-btn yellow-btn">Submit</button>
        </div>
      </div>
    </div>
{!! Form::close() !!}
</div>