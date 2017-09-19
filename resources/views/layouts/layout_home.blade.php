{{-- views/layouts/layout_home.blade.php --}}
<!DOCTYPE HTML>
<html>
<head>
	@include('includes/head')
	<title>Service on The Way</title>
</head>

<body>
<!-- <audio src="{{ url('assets')}}/mantra.mp3" autoplay="true"> -->

</audio>
<div class="body-container"> 
	  <!--header start -->
  @include('includes/header')
 
  <!--header end -->
  @yield('content')

   <!--footer start -->
    @include('includes/footer')

  <!--footer end --> 

    <!--all script start -->
 @include('includes/script')
  <!--script end --> 

  </div>
</body>
</html>