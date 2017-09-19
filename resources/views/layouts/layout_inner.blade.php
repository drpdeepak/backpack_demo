{{-- views/layouts/layout_inner.blade.php --}}
<!DOCTYPE HTML>
<html>
<head>
	@include('includes/head')
	<title>Service on the Way</title>

</head>

<body>
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