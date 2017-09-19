@extends('layouts/layout_home')
@section('content')

<!--   <section class="home-slider">
    <div class="owl-carousel owl-theme">

 @foreach ($sliderdata as $slider)
      
      <div class="item">
        <div class="home-slider-col"><img src="<?php echo asset('uploads/'.$slider->image_url); ?>" alt=""></div>
      </div>
       @endforeach
 </div> -->

  <!-- Home Design -->
  <div class="ulockd-home-slider">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12 ulockd-pmz">
          <div class="ulockd-main-slider-style2">           
            <div class="item">
              <div class="caption">
                <div class="ulockd-text-one wow fadeInUp" data-wow-duration="300ms" data-wow-delay=".3s">Welcome To Our</div>
                <div class="ulockd-text-two wow fadeInUp" data-wow-duration="600ms" data-wow-delay=".6s">Best Car Repair<span class="text-thm1"> Service</span></div>
                <div class="ulockd-text-three wow fadeInUp" data-wow-duration="900ms" data-wow-delay=".9s">
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffd alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be</p>
                </div>
                <a href="#" class="btn btn-lg ulockd-btn-thm ulockd-home-btn wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="1.2s"><span> Get A Quote</span></a>
              </div>
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/home/h1.jpg" alt="h1.jpg">
            </div>
            <div class="item">
              <div class="caption text-center">
                <div class="ulockd-text-one wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="1.5s">Welcome To Our</div>
                <div class="ulockd-text-two wow fadeInUp" data-wow-duration="1800ms" data-wow-delay="1.8s">Creative Factor<span class="text-thm1"> Company</span></div>
                <div class="ulockd-text-three wow fadeInUp" data-wow-duration="2100ms" data-wow-delay="2.1s">
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffd alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be</p>
                </div>
                <a href="#" class="btn btn-lg ulockd-btn-thm ulockd-home-btn wow fadeInUp" data-wow-duration="2400ms" data-wow-delay="2.4s"><span> Get A Quote</span></a>
              </div>
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/home/h2.jpg" alt="h2.jpg">
            </div>
            <div class="item">
              <div class="caption text-right">
                <div class="ulockd-text-one wow fadeInUp" data-wow-duration="2400ms" data-wow-delay="2.7s">Welcome To Our</div>
                <div class="ulockd-text-two wow fadeInUp" data-wow-duration="2700ms" data-wow-delay="3s">Creative Factor<span class="text-thm1"> Company</span></div>
                <div class="ulockd-text-three wow fadeInUp" data-wow-duration="3000ms" data-wow-delay="3.3s">
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffd alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be</p>
                </div>
                <a href="#" class="btn btn-lg ulockd-btn-thm ulockd-home-btn wow fadeInUp" data-wow-duration="3300ms" data-wow-delay="3.6s"><span> Get A Quote</span></a>
              </div>
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/home/h3.jpg" alt="h3.jpg">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Our Service -->
  <section class="ulockd-service-three">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-srvc-title-two">
            <div class="ulockd-title-icon"><span class="flaticon-steering-wheel-1"></span></div>
            <h2 class="text-uppercase">Awesome Services</span></h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto adjusting at MrFix Autocentre.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-oil"></span></div>
              <h3>Oil & Filter Change</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-auto-repair-service"></span></div>
              <h3>Interim Service</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-battery"></span></div>
              <h3>Battery and Cables</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-exhaust-1"></span></div>
              <h3>Exhaust Inspection</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-wheel-alignment"></span></div>
              <h3>Wheel Alignment</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-bound"></span></div>
              <h3>Belts Inspection</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-brake-disk"></span></div>
              <h3>Break Inspection</h3>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-srvc-column-two text-center">
            <div class="ulockd-srvc-details-two">
              <div class="ulockd-srv-icon-two"><span class="flaticon-car-wash-machine"></span></div>
              <h3>Full Wash</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our About -->
  <section class="ulockd-about-two">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="ulockd-abouttwo-details">
            <h2>About Mr <span class="text-thm2">Fix</span></h2>
            <p class="ulockd-about-para">Mr fix Car Service - the correct address for master upkeep, repair and retrofitting. Mr fix Car Service workshops appreciate all the support of Mr fix, one of the main provider of unique car gear. With more than 500 qualified workshops, our administration system is one of India's biggest free chains. With our one of a kind capacities we can take care of all makes of vehicle.</p>
            <p class="ulockd-about-para-two">Mr fix Auto Service is a multi-mark auto benefit workshop offering bona fide save parts, diagnostics and repair – not with standing for new-age autos with the most recent in car innovation</p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="ulockd-about-video">
            <div class="ulockd-afv-thumb">
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/resource/video-bg.jpg" alt="video-bg.jpg">
              <div class="ulockd-afv-overlay"><a class="popup-youtube" href="https://www.youtube.com/watch?v=LDU3s9Kf0HY"><i class="ulockd-afv-play-icon flaticon-play-button-1"></i></a></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mrgn-1240">
        <div class="col-md-3">
          <div class="ulockd-ffact-two">
            <span class="ulockd-icon-let flaticon-presentation pull-left"></span>
                        <p>Project</p>
                        <div class="timer">5608</div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="ulockd-ffact-two">
            <span class="ulockd-icon-let flaticon-medal pull-left"></span>
                        <p>Award</p>
                        <div class="timer">152</div>
          </div>
        </div>
          <div class="col-md-3">
            <div class="ulockd-ffact-two">
              <span class="ulockd-icon-let flaticon-trophy pull-left"></span>
                          <p>Cup Coffee</p>
                          <div class="timer">780</div>
            </div>
        </div>
        <div class="col-md-3">
          <div class="ulockd-ffact-two">
            <span class="ulockd-icon-let flaticon-thumbs-up-hand-symbol pull-left"></span>
                        <p>Happy Client</p>
                        <div class="timer">1980</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Service -->
  <section class="ulockd-service-three">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-srvc-title-two">
            <div class="ulockd-title-icon"><span class="flaticon-steering-wheel-1"></span></div>
            <h2 class="text-uppercase">our latest work</h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto <br> adjusting at MrFix Autocentre.</p>
          </div>
        </div>
      </div>
            <div class="row">
              <div class="col-md-12">
                  <!-- Masonry Filter -->
                  <ul class="list-inline masonry-filter text-center">
                      <li><a href="#" class="active" data-filter="*"><span>All</span></a></li>
                      <li><a href="#mechanical" data-filter=".mechanical" class=""><span>Mechanical</span></a></li>
                      <li><a href="#checmical" data-filter=".checmical" class=""><span>Checmical</span></a></li>
                      <li><a href="#construction" data-filter=".construction" class=""><span>Construction</span></a></li>
                      <li><a href="#oil" data-filter=".oil" class=""><span>Oil</span></a></li>
                      <li><a href="#new" data-filter=".new" class=""><span>New</span></a></li>
                  </ul>
                  <!-- End Masonry Filter -->
              
                  <!-- Masonry Grid -->
                  <div id="grid" class="masonry-gallery grid-four-item clearfix">

                    <!-- Masonry Item -->
                    <div class="isotope-item construction">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/1.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/1.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item checmical">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/2.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/2.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item new">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/3.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/3.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item checmical">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/4.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/4.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item mechanical">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/5.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/5.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item new">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/3.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/3.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item checmical">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/4.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/4.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry Item -->
                    <div class="isotope-item mechanical">
                        <div class="ulockd-gallery-thumb-l2">
                          <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/gallery/5.jpg" alt="project">
                          <div class="layer">
                  <h3>Et Harum Ami Quidem</h3>
                  <p>There are many variations of passages of Lorem Ipsum available,</p>
                  <div class="ulockd-overlay-icon-l2">
                    <a class="popup-img" href="{{url('/')}}/assets/images/gallery/5.jpg" title="Gallery Photos"><span class="flaticon-focus"></span></a>
                    <a class="link-btn" href="#" ><span class="flaticon-link-button"></span></a>
                  </div>
                          </div>
                        </div>
                    </div>

                    <!-- Masonry = Masonry Item -->
                  </div>
                  <!-- Masonry Gallery Grid Item -->
              </div>
            </div>
    </div>
  </section>

  <!-- Our First Divider -->
  <section class="ulockd-frst-divider-l2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="ulockd-dvidr-mttl">We Offer Quality Full and Affordable Service For You.</h2>
          <div class="ulockd-dvidr-btn text-uppercase"><a class="btn btn-default ulockd-btn-styledark" href="#">Get Quote</a></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Team -->
  <section class="ulockd-l2-team">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-team-title">
            <div class="ulockd-title-icon"><span class="flaticon-steering-wheel-1"></span></div>
            <h2 class="text-uppercase">OUR EXPERT</h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto adjusting at MrFix Autocentre.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-team-member">
            <div class="ulockd-team-thumb">
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/team/1.jpg" alt="team1.jpg">
              <div class="ulockd-team-overlay"><a href="page-team-details" title="Team Details"><span class="flaticon-social"></span></a></div>
            </div>
            <div class="ulockd-team-mdetails">
              <div class="ulockd-member-name">Henry Jones</div>
              <div class="ulockd-team-member-post">Automobile Engineer</div>
              <ul class="list-inline ulockd-social-linked">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-rss"></i></a></li>
                  <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-team-member">
            <div class="ulockd-team-mdetails">
              <div class="ulockd-member-name">Elizabeth Henry</div>
              <div class="ulockd-team-member-post">Automobile Engineer</div>
              <ul class="list-inline ulockd-social-linked">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-rss"></i></a></li>
                  <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
            </div>
            <div class="ulockd-team-thumb">
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/team/2.jpg" alt="team2.jpg">
              <div class="ulockd-team-overlay"><a href="page-team-details" title="Team Details"><span class="flaticon-social"></span></a></div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-team-member">
            <div class="ulockd-team-thumb">
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/team/3.jpg" alt="team3.jpg">
              <div class="ulockd-team-overlay"><a href="page-team-details" title="Team Details"><span class="flaticon-social"></span></a></div>
            </div>
            <div class="ulockd-team-mdetails">
              <div class="ulockd-member-name">Williams Jones</div>
              <div class="ulockd-team-member-post">Expert Mechanic</div>
              <ul class="list-inline ulockd-social-linked">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-rss"></i></a></li>
                  <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="ulockd-team-member">
            <div class="ulockd-team-mdetails">
              <div class="ulockd-member-name">Smith Johnson</div>
              <div class="ulockd-team-member-post">Chief Mechanic</div>
              <ul class="list-inline ulockd-social-linked">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-rss"></i></a></li>
                  <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
            </div>
            <div class="ulockd-team-thumb">
              <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/team/4.jpg" alt="4.jpg">
              <div class="ulockd-team-overlay"><a href="page-team-details" title="Team Details"><span class="flaticon-social"></span></a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Testimonial -->
  <section class="ulockd-testimonial">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-testimonial-title">
            <div class="ulockd-title-icon"><span class="flaticon-steering-wheel-1"></span></div>
            <h2 class="text-uppercase">USER'S FEEDBACK</h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto adjusting at MrFix Autocentre.</p>
          </div>
        </div>
        <div class="col-md-12">
          <div class="ulockd-testimonial-carousel">
            <div class="item">
              <div class="media">
                  <div class="media-left pull-left">
                    <a href="#">
                      <img class="media-object img-responsive" src="{{url('/')}}/assets/images/resource/testi1.jpg" alt="testi1.jpg">
                    </a>
                  </div>
                  <div class="media-body text-left">
                    <h4 class="media-heading">Anna Perez</h4>
                    <p><strong> Professor</strong></p>
                  <p>I have constantly believed Mr Fix to take care of business right, and a reasonable cost, despite the fact that I now live in Chandler I will continue taking my vehicles into Mr Fix for my automobiles repair.</p>
                  </div>
              </div>
            </div>
            <div class="item">
              <div class="media">
                  <div class="media-left pull-left">
                    <a href="#">
                      <img class="media-object img-responsive" src="{{url('/')}}/assets/images/resource/testi2.jpg" alt="testi2.jpg">
                    </a>
                  </div>
                  <div class="media-body text-left">
                    <h4 class="media-heading">Joe Smith</h4>
                    <p><strong> Doctor</strong></p>
                  <p>I have constantly believed Mr Fix to take care of business right, and a reasonable cost, despite the fact that I now live in Chandler I will continue taking my vehicles into Mr Fix for my automobiles repair.</p>
                  </div>
              </div>
            </div>
            <div class="item">
              <div class="media">
                  <div class="media-left pull-left">
                    <a href="#">
                      <img class="media-object img-responsive" src="{{url('/')}}/assets/images/resource/testi3.jpg" alt="testi3.jpg">
                    </a>
                  </div>
                  <div class="media-body text-left">
                    <h4 class="media-heading">Daniel Forg</h4>
                    <p><strong> Engineer</strong></p>
                  <p>I have constantly believed Mr Fix to take care of business right, and a reasonable cost, despite the fact that I now live in Chandler I will continue taking my vehicles into Mr Fix for my automobiles repair.</p>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Blog -->
 <!--  <section class="ulockd-blog">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <div class="ulockd-blog-title">
            <div class="ulockd-title-icon"><span class="flaticon-steering-wheel-1"></span></div>
            <h2 class="text-uppercase">LATEST NEWS </h2>
            <p>Expand the life expectancy and estimation of your auto with standard auto adjusting at MrFix Autocentre.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="ulockd-bpost-slider">
            <div class="item">
              <article class="blog-post">
                <div class="ulockd-blog-thumb">
                  <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/blog/b2.jpg" alt="b2.jpg">
                </div>
                <div class="ulockd-blog-post-details text-left">
                  <div class="ulockd-blog-post-title"><h3>Awesome Checkup</h3></div>
                  <ul class="list-inline">
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-user-o text-thm1"> </i> B Willis</a></li>
                    <li class="ulockd-post-by"><a href="#"> |</a></li>
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-calendar text-thm1"> </i> 25, Jun 2017</a></li>
                  </ul>
                  <div class="ulockd-bpost">
                    <p>When you go to a Firestone Complete Auto Care store for any regime, we offer a free checkup for your vehicle.We look at your tires, liquid levels, belts, wipers, battery is the limit from there.
                    <a class="ulockd-bp-btn" href="#"> Read More...</a></p>
                  </div>
                </div>
              </article>
            </div>
            <div class="item">
              <article class="blog-post">
                <div class="ulockd-blog-thumb">
                  <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/blog/b1.jpg" alt="b1.jpg">
                </div>
                <div class="ulockd-blog-post-details text-left">
                  <div class="ulockd-blog-post-title"><h3>Awesome Car Cleaning</h3></div>
                  <ul class="list-inline">
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-user-o text-thm1"> </i> Z Lopez</a></li>
                    <li class="ulockd-post-by"><a href="#"> |</a></li>
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-calendar text-thm1"> </i> 25, Jun 2017</a></li>
                  </ul>
                  <div class="ulockd-bpost">
                    <p>Rando You consider your auto as a decent friend that has been with all of you along the street of life. You revere your four-wheeler and love to show it off to your companions. <a class="ulockd-bp-btn" href="#"> Read More...</a></p>
                  </div>
                </div>
              </article>
            </div>
            <div class="item">
              <article class="blog-post">
                <div class="ulockd-blog-thumb">
                  <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/blog/b3.jpg" alt="b3.jpg">
                </div>
                <div class="ulockd-blog-post-details text-left">
                  <div class="ulockd-blog-post-title"><h3>Popular Automobile</h3></div>
                  <ul class="list-inline">
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-user-o text-thm1"> </i> W Smith</a></li>
                    <li class="ulockd-post-by"><a href="#"> |</a></li>
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-calendar text-thm1"> </i> 25, Jun 2017</a></li>
                  </ul>
                  <div class="ulockd-bpost">
                    <p>Consistently, Popular Science respects 100 developments that are splendid, progressive, and bound to shape the future—these are the Best of What's New.  <a class="ulockd-bp-btn" href="#"> Read More...</a></p>
                  </div>
                </div>
              </article>
            </div>
            <div class="item">
              <article class="blog-post">
                <div class="ulockd-blog-thumb">
                  <img class="img-responsive img-whp" src="{{url('/')}}/assets/images/blog/b4.jpg" alt="b3.jpg">
                </div>
                <div class="ulockd-blog-post-details text-left">
                  <div class="ulockd-blog-post-title"><h3>Automobile Circuit</h3></div>
                  <ul class="list-inline">
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-user-o text-thm1"> </i> W Smith</a></li>
                    <li class="ulockd-post-by"><a href="#"> |</a></li>
                    <li class="ulockd-post-by"><a href="#"> <i class="fa fa-calendar text-thm1"> </i> 25, Jun 2017</a></li>
                  </ul>
                  <div class="ulockd-bpost">
                    <p>The electrical arrangement of an auto is a shut circuit with an autonomous power source the battery. It works on a little division of the force of a family circuit.  <a class="ulockd-bp-btn" href="#"> Read More...</a></p>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->

  <!-- Our Partner -->
  <section class="ulockd-partner-two">
    <div class="container">
      <div class="row">
        <div class="col-md-2"><div class="ulockd-partner-thumb text-center"><img src="{{url('/')}}/assets/images/partners/partner1.png" alt=""></div></div>
        <div class="col-md-3"><div class="ulockd-partner-thumb text-center"><img src="{{url('/')}}/assets/images/partners/partner2.png" alt=""></div></div>
        <div class="col-md-2"><div class="ulockd-partner-thumb text-center"><img src="{{url('/')}}/assets/images/partners/partner3.png" alt=""></div></div>
        <div class="col-md-3"><div class="ulockd-partner-thumb text-center"><img src="{{url('/')}}/assets/images/partners/partner4.png" alt=""></div></div>
        <div class="col-md-2"><div class="ulockd-partner-thumb text-center"><img src="{{url('/')}}/assets/images/partners/partner5.png" alt=""></div></div>
      </div>
    </div>
  </section>
@stop


