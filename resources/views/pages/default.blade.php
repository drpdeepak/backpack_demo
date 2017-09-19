@extends('layouts/layout_inner')
@section('content')
<style>
.training-container p{ text-align: justify;}
.training-container ol li, .training-container ul li{padding: 10px 20px; text-align: justify;}
.training-container ul li{list-style: disc;}
.training-container ol, ul {margin: 0 0 0 15px;}
.training-container ul li:before {top: 19px;display: none;}
.training-container ol li p, .training-container ul li p { padding-left: 0; margin-bottom: 0; }
.header-social{ margin:0; padding: 0; }
</style>
<div class="ulockd-inner-home">
    <div class="container text-center">
      <div class="row">
        <div class="ulockd-inner-conraimer-details">
          <div class="col-md-12">
            <h1 class="text-uppercase">ABOUT US</h1>
          </div>
          <div class="col-md-12">
            <div class="ulockd-icd-layer">
              <ul class="list-inline ulockd-icd-sub-menu">
                <li><a href="#"> HOME </a></li>
                <li><a href="#"> > </a></li>
                <li> <a href="#"> ABOUT US </a> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Our About -->
  <section class="ulockd-about-one">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-7 ulockd-abtonspc">
          <div class="ulockd-about-ondetials">
            <h2>About Our <span class="text-thm1"> Mr Fix</span></h2>
            <p>Boost the life expectancy and estimation of your auto with customary auto overhauling at MrFix Autocentre. Our master experts are prepared to benefit any make and model of auto utilizing the most recent systems and demonstrative gear and are focused on giving a benevolent, clear and fair administration.</p>
            <div class="row">
              <div class="col-sm-6 col-md-6 ulockd-pad-zero">
                <ul class="list-unstyled ulockd-fstabt-list">
                  <li>Oil & Filter Change</li>
                  <li>Interim Service</li>
                  <li>Battery and Cables </li>
                  <li>Belts </li>
                  <li>Chassis Lubrication </li>
                  <li>Engine Air Filter </li>
                  <li>Engine Oil </li>
                  <li>Wheel Alignment </li>
                </ul>
              </div>
              <div class="col-sm-6 col-md-6 ulockd-pad-zero">
                <ul class="list-unstyled ulockd-fstabt-list">
                  <li>Exhaust </li>
                  <li>Full Service </li>
                  <li>Hoses </li>
                  <li>Windshield Washer Fluid </li>
                  <li>Engine Oil Level </li>
                  <li>Power Steering Fluid </li>
                  <li>Steering and Suspension </li>
                  <li>Wiper Blades </li>
                </ul>               
              </div>
            </div>
            <p class="ulockd-abt-ondtls-para">This 24 month benefit covers all ranges of basic upkeep. Notwithstanding every one of the things included on the Full administration we cover things that are frequently suggested for substitution like clockwork.</p>
          </div>
        </div>
        <div class="col-sm-12 col-md-5">
          <div class="ulockd-about-thumb">
            <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/resource/about1.png" alt="about1.png">
            <h2 class="ulockd-about-thumb-ttl">Main Engineer From <span class="text-thm1"> Mr Fix</span></h2>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Service -->
  <section class="ulockd-service-two">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-srvc-title">
            <h2 class="text-uppercase">Awesome <span class="text-thm1">Services</span></h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto adjusting at MrFix Autocentre.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-oil-1"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Oil & Filter Change</h3>
              <p>A standout amongst the most essential things you can do to keep your auto in the most ideal condition is to change your engine oil and channel.</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-car-wash-machine"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Cleaning Service </h3>
              <p>We handle minor and significant motor repairs. We likewise supply and fit trade motors. On the other hand, motors can be reconstructed where no substitution unit is accessible.</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-suspension"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Steering & Suspension</h3>
              <p>Adjust, solidness and smoothness – they're what guarantee an agreeable ride for you and your travelers, and your auto's controlling and suspension are what make this conceivable.</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-exhaust"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Exhaust Inspection</h3>
              <p>On the off chance that you imagined that a greater fumes framework implied greater power, you'd be mixed up. Here's all that you have to think about fumes frameworks and how to expand execution.</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-battery-1"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Battery and Cables</h3>
              <p>Have full confidence your auto will begin 100% of the time by guaranteeing all the battery parts are completely practical. Try not to disregard the battery link while surveying your under-hood necessities.</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="ulockd-srvc-column">
            <div class="ulockd-srv-icon pull-left"><span class="flaticon-steering-wheel-1"></span></div>
            <div class="ulockd-srvc-details">
              <h3>Wheel Alignment</h3>
              <p>We utilize the most recent exactness gear to alter caster, camber and toe-in of front wheels to avert unnecessary tire wear and guarantee your auto's rapid solidness.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
@stop