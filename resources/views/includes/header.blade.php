<div class="wrapper">
  <div class="preloader"></div>
    <div class="ulockd-header-topped-two">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-md-3 col-lg-6">
            <div class="ulockd-social-linked-two pull-left">
              <ul class="list-inline">
                <li><a href="{{Config::get('settings.facebook') }}"><i class="fa fa-facebook"></i></a></li>
                <li><a href="{{Config::get('settings.twitter') }}"><i class="fa fa-twitter"></i></a></li>
                <li><a href="{{Config::get('settings.Gplus') }}"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="{{Config::get('settings.youtube') }}"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="{{Config::get('settings.instagram') }}"><i class="fa fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
         
          <div class="col-sm-6 col-md-3 col-lg-2 ulockd-htpmz">
            <div class="ulockd-welcm-ht-two">
              <p class="ulockd-phone"><i class="fa fa-phone"></i> {{Config::get('settings.phone') }}</p>
            </div>
          </div>
          <div class="col-sm-6 col-md-3 col-lg-4 ulockd-htpmz">
            <div class="ulockd-welcm-ht-two">
      <p class="ulockd-phone">
      <i class="fa fa-envelope-o"></i> {{Config::get('settings.contact_email') }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>

  <!-- Header Styles -->
  <div class="header-nav">
    <div class="main-header-nav-two navbar-scrolltofixed">
      <div class="container">
          <nav class="navbar navbar-default bootsnav ulockd-menu-style-two">
              <div class="container ulockd-pad-zero">
                  <!-- Start Header Navigation -->
                  <div class="navbar-header ulockd-ltwo">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                          <i class="fa fa-bars"></i>
                      </button>
                      <a class="navbar-brand" href="{{ url('/')}}"><img src="{{url('/')}}/{{Config::get('settings.logo') }}" alt=""  class="logo"></a>
                  </div>
                  <!-- End Header Navigation -->

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="navbar-menu">


          @if ($menu_items->count())
            <ul class="nav navbar-nav navbar-right">
              @foreach ($menu_items as $menu_item)
                  @if ($menu_item->children->count())
                      <li class="dropdown-toggle active" data-toggle="dropdown">

                          <a href="{{ $menu_item->url() }}">
                              {{ $menu_item->name }} 
                          </a><span class="dropdown-icon"></span>
                          <ul class="dropdown-menu"> <?php $o=0; $oo=0; ?>
                              @foreach ($menu_item->children as $child)
                              
                                  <li class="{{ ($child->url() == Request::url()) ? 'active' : '' }}">
                                      @if ($child->children->count())
                                          @include('layouts.partials.nav.pages.sub')
                                      @else
                                          <a href="{{ $child->url() }}">{{ $child->name }}</a>
                                      @endif
                              @endforeach
                          </ul>
                      </li>
                  @else
                      <li class="navitem {{ ($menu_item->url() == Request::url()) ? ' active' : '' }}">
                          <a href="{{ $menu_item->url() }}">{{ $menu_item->name }}</a>
                      </li>
                  @endif
              @endforeach
          </ul>
        @endif



                   <!--    <ul class="nav navbar-nav navbar-right">
                          <li>
                            <a href="{{ url('/')}}" class="dropdown-toggle active" data-toggle="dropdown">Home</a>
                          </li>
                          <li >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services</a>
                          </li>
                          <li >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Why Us</a>
                          </li>
                          <li >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Our Plans</a>
                          </li>

                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Testimonial</a>
                                <ul class="dropdown-menu">
                               <li><a href="#">Write Review</a></li>
                               </ul>
                          </li>
                         
                          <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">More</a>
                              <ul class="dropdown-menu">
                    <li><a href="#">Offers</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">EMI Calculator</a></li>
                    <li><a href="#">Faq</a></li>
                    <li><a href="#">Driving School</a></li> 
                          </li>
                          <li >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact</a>
                              
                          </li>
                      </ul> -->
                  </div>
                 
              </div>
          </nav>
      </div>
    </div>
  </div>







<!-- <header class="header" data-spy="affix" data-offset-top="1">
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-10"> <a href="{{ URL::to('/')}}"><img src="{{url('/')}}/{{Config::get('settings.logo') }}" alt=""  class="logoimg"></a> </div>
        <div class="col-md-9 col-sm-9 col-xs-2">
        <div class="show-xs-menu-btn"><i class="fa fa-bars" aria-hidden="true"></i></div>
          <div class="header-nav-wrap">
          <nav class="header-nav">

            @if ($menu_items->count())

            <ul>
    @foreach ($menu_items as $menu_item)
        @if ($menu_item->children->count())
            <li class="navitem has-child1">

                <a href="">
                    {{ $menu_item->name }} 
                </a><span class="dropdown-icon"></span>
                <ul class="dropdown-menu"> <?php $o=0; $oo=0; ?>
                    @foreach ($menu_item->children as $child)
                    
                        <li class="{{ ($child->url() == Request::url()) ? 'active' : '' }}">
                            @if ($child->children->count())
                                @include('layouts.partials.nav.pages.sub')
                            @else
                                <a href="{{ $child->url() }}">{{ $child->name }}</a>
                            @endif
                    @endforeach
                </ul>
            </li>
        @else
            <li class="navitem {{ ($menu_item->url() == Request::url()) ? ' active' : '' }}">
                <a href="{{ $menu_item->url() }}">{{ $menu_item->name }}</a>
            </li>
        @endif
    @endforeach
      </ul>
@endif
          </nav></div>
        </div>
      </div>
    </div>
  </div>
<div class="col-md-12 menu-bottom"></div>
</header> -->
