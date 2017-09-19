@extends('layouts/layout_inner')
@section('content')

  <div class="inner-page-banner">
    <div class="container">
      <h1>Register</h1>
    </div>
  </div>
  <style>
  .help-block{ color: #f00; }
  </style>
  <div class="inner-page-container register-container">
    <div class="container">
      <div class="row">
        <div class="col-md-7 col-sm-7 col-xs-12">
          <div class="contact-us-form register-form">
            <h2>Create an account</h2>
            <div class="bottomshadow">
              <div class="form-wrap">
                <form class="default-form default-form-2" role="form" method="POST" action="" >
                {!! csrf_field() !!}
                  <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-user" aria-hidden="true"></i></label>
                        <input name="fname" value="{{ old('fname') }}" type="text" class="form-control" placeholder="First Name" required >
                        
                      </div>
                       @if ($errors->has('fname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('fname') }}</strong>
                                    </span>
                                @endif
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-user" aria-hidden="true"></i></label>
                        <input type="text" name="lname" value="{{ old('lname') }}" class="form-control" placeholder="Last Name" required>
                      </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-mobile" aria-hidden="true"></i></label>
                        <input name="mobile" value="{{ old('mobile') }}" type="tel" class="form-control" placeholder="Mobile Number" required maxlength="11">
                      </div>
                      @if ($errors->has('mobile'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('mobile') }}</strong>
                                    </span>
                        @endif
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group uppercase">
                        <label><i class="icon-mailbox-empty-tool" aria-hidden="true"></i></label>
                        <input name="postcode" value="{{ old('postcode') }}" type="tel" class="form-control" placeholder="Postcode" required maxlength="8">
                         
                      </div>
                      @if ($errors->has('postcode'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('postcode') }}</strong>
                                    </span>
                        @endif

                    </div>
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
                        <label><i class="fa fa-umbrella" aria-hidden="true"></i></label>
                        <input type="text" name="dob" value="{{ old('dob') }}"  id="Date" class="form-control" placeholder="Date of Birth" required maxlength="80">
                      </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-group icon-form-group">
                        <label><i class="fa fa-pencil" aria-hidden="true"></i></label>
                        <textarea name="brief_message" cols="1" rows="1" 
                        class="form-control" placeholder="Birth Place"></textarea>
                      </div>
                    </div>
                  <!--   <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="form-captcha"> <span class="form-captcha-title" style="color:#000">Please tick the box below <strong>I'm not a robot</strong> and click on Register</span>
                     <div class="captcha-colum"> {!! app('captcha')->display(); !!}
                   
                          @if ($errors->has('g-recaptcha-response'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                           @endif

                     </div>
                      </div>
                    </div> -->
                    <div class="col-md-12 col-sm-12 col-xs-12">

                      <button type="submit" class="default-btn"> <i class="fa fa-btn fa-user"></i> {{ trans('backpack::base.register') }}</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-5 col-sm-5 col-xs-12">
          <div class="have-acc">
            <figure><img src="assets/img/photo2.png" alt=""></figure>
            <div class="have-acc-wrap">
              <div class="have-acc-login text-center">
                <h2>Already have an account? <strong>Login Now!</strong></h2>
                <a href="{{url('login')}}" class="default-btn yellow-btn withShadow">Login </a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
   
         
             @stop