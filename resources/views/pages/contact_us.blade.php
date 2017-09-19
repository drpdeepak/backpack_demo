@extends('layouts/layout_inner')
@section('content')

 <div class="inner-page-banner">
    <div class="container">
      <h1><?php echo $page->title; ?></h1>
    </div>
  </div>
  <div class="inner-page-container contact-container">
    <div class="container contact-content">
      <div class="row">
        <div class="col-md-7 col-sm-6 col-xs-12">
         @if(Session::has('flash_message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('flash_message') }}</p>
@endif
          <div class="contact-panel"> 

            <!--Contact us form -->
             @include('includes/contact-form')
            <?php //include("includes/contact-form.php"); ?>
            <!--/Contact us form--> </div>
        </div>
        <div class="col-md-5 col-sm-6 col-xs-12">
          <div class="contact-rt-info">
            <div class="contact-info-box">
              <h3>Phone</h3>
              <p><a href="tel:{{Config::get('settings.phone') }}">{{Config::get('settings.phone') }}</a></p>
            </div>
            <div class="contact-info-box">
              <h3>Address</h3>
              <p><?php echo $page->content; ?></p>
            </div>
            <!--<div class="contact-info-box">
              <h3>Address</h3>
              <p>Deal House - 3 Willow Grove - Chislehurst - BR7 5BN<br>
                Serving London, Essex, Hertfordshire, Kent and the Surrounding <br>
                Counties, and the South East Of England</p>
            </div>-->
          </div>
        </div>
      </div>
      <section class="map-section"> </section>
    </div>
  </div>
       
@stop