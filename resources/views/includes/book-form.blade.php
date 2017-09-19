@extends('layouts/layout_inner')
@section('content')
   
    <div class="inner-page-banner">
    <div class="container">
      <h1></h1>
    </div>
  </div>


  <div class="inner-page-container testimonial-page">
    <div class="container">
      <!-- Page Content -->

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">{{ $product->name }}</h1>
            </div>
        </div>
        <!-- /.row -->
<div class="contact-us-form" id="formhome_page">
<div class="form-errors"></div>
  <h2>Booking Form</h2>

  <span class="form-subtitle">and we will get back to you.</span>
  {!! Form::open(['action' => 'HotelController@formsubmit','method' => 'POST','class' => 'default-form','id' => 'homeform']) !!}
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
          <textarea name="comments" id="comments" placeholder="Message" class="form-control">{{ old('comments') }}</textarea>
           
        </div>
         @if ($errors->has('comments'))
            <span class="help-block">
                <strong>{{ $errors->first('comments') }}</strong>
            </span>
        @endif
      </div>


      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="form-group">
          <button type="submit" class="default-btn yellow-btn">Submit</button>
        </div>
      </div>
    </div>
{!! Form::close() !!}
</div>
</div>
</div>