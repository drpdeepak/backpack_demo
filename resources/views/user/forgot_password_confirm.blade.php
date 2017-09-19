@extends('layouts/layout_inner')
@section('content')
<?php $current_token = basename($_SERVER['REQUEST_URI']); ?>
 <div class="inner-page-banner">
    <div class="container">
      <h1>Reset Password </h1>
    </div>
  </div>
  <div class="inner-page-container register-container">
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-md-8 col-sm-12 col-xs-12">
          <div class="contact-us-form register-form">
            <h2>Reset Password</h2>
            <div class="bottomshadow">

              <div class="form-wrap">
               @if(Session::has('error_message'))
<p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('error_message') }}</p>
@endif

              

 {!! Form::open(['action' => 'UserController@changeforgotpassword','method' => 'POST','class' => 'default-form default-form-2','id' => 'homeform']) !!}

                 {!! csrf_field() !!}
                  <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-envelope" aria-hidden="true"></i></label>
                        <input name="email" value="{{ old('email') }}" class="form-control" placeholder="Email Address"  type="email">
                      </div>
                      @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                    	@endif
                    	 <input type="hidden" name="token_db" value="<?php echo $current_token; ?>">
                    </div>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-lock" aria-hidden="true"></i></label>
                        <input name="password" value="" type="password" class="form-control" placeholder="Password" required>
                      </div>
                      
                    </div>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-lock" aria-hidden="true"></i></label>
                        <input name="password_confirmation" value="" type="password" class="form-control" placeholder="Confirm Password" required>
                      </div>
                      @if ($errors->has('password_confirmation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                                @endif
                    </div>
                                    
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <button type="submit" class="default-btn">  Reset Password </button>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12"> <a href="{{url('login')}}" class="forgot-passcode f_left">login</a> <span class="dont-hav-acc f_right">Don't have an account yet? <a href="{{url('register')}}" class="forgot-passcode"> Register Now!</a></span> </div>
                  </div>
             {!! Form::close() !!}
              </div>
            </div>
          </div>
        </div>
        <!--<div class="col-md-5 col-sm-5 col-xs-12">
          <div class="have-acc">
            <figure><img src="assets/img/photo2.png" alt=""></figure>
            <div class="have-acc-wrap">
              <div class="have-acc-login text-center">
                <h2>Don't have an account yet? <strong>Register Now!</strong></h2>
                <a href="javascript:void(0)" class="default-btn yellow-btn withShadow">Register </a> </div>
            </div>
          </div>
        </div>--> 
      </div>
    </div>
  </div>
@stop