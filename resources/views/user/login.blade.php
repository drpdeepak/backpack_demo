@extends('layouts/layout_inner')
@section('content')
 <div class="inner-page-banner">
    <div class="container">
      <h1>Login </h1>
    </div>
  </div>
  <div class="inner-page-container register-container">
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-md-8 col-sm-12 col-xs-12">
          <div class="contact-us-form register-form">
            <h2>Login to you account</h2>
            <div class="bottomshadow">
              <div class="form-wrap">
               @if(Session::has('error_message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('error_message') }}</p>
@endif
 @if(Session::has('success_message'))
<p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success_message') }}</p>
@endif

                <form class="default-form default-form-2" role="form" method="POST" action="">
                 {!! csrf_field() !!}
                  <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-envelope" aria-hidden="true"></i></label>
                        <input name="email" value="{{ old('email') }}" class="form-control" placeholder="Email Address" required="" type="email">
                      </div>
                      @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-lock" aria-hidden="true"></i></label>
                        <input name="password" value="{{ old('password') }}" type="password" class="form-control" placeholder="Password" required>
                      </div>
                      @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <button type="submit" class="default-btn">Login</button>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12"> <a href="{{url('password/reset')}}" class="forgot-passcode f_left">Forgot your password ?</a> <span class="dont-hav-acc f_right">Don't have an account yet? <a href="{{url('register')}}" class="forgot-passcode"> Register Now!</a></span> </div>
                  </div>
                </form>
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