@extends('layouts/layout_inner')
@section('content')
   
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

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-6">
                <div class="row carousel-holder">

                    <div class="col-md-12">
                       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="{{ url('/') }}/{{$product->image1}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{ url('/') }}/{{$product->image1}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{ url('/') }}/{{$product->image1}}" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div> 
                    </div>

                </div>
           <div class="col-md-4 col-xs-12 img-thumbnail"><img class="img-responsive" src="{{ url('/') }}/{{$product->image1}}" alt=""></div>
           <div class="col-md-4 col-xs-12 img-thumbnail"><img class="img-responsive" src="{{ url('/') }}/{{$product->image2}}" alt=""></div>
          <div class="col-md-4 col-xs-12 img-thumbnail"> <img class="img-responsive" src="{{ url('/') }}/{{$product->image3}}" alt=""></div>
            </div>
          
            <div class="col-md-6">
                <h2>{{ $product->name }}</h2>
                <p> {{ print_r($product->description)}}</p><br/>
                <h3>Price : {{ $product->price}}  </h3>
                <br/>
                <h3>Is Featured : {{ $product->featured?'Yes':'No'}}</h3>
               <br/>
                <a href="{{ url('book')}}/{{$product->id}}/hotels" class="btn btn-info btn-md"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Book Now</a> 
            </div>
            </form>
        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Related Projects</h3>
            </div>
         @foreach ($allproduct as $brands)
            <div class="col-sm-3 col-xs-6 img-thumbnail">
                <a href="{{ url('hotel') }}/{{ $brands->id }}">
                    <img class="img-responsive portfolio-item" src="{{ url('/') }}/{{$brands->image1}}" alt="">
                    <br/>
                    <h3 align="center">{{$brands->name}}
                    <span class="btn btn-success"><i class="fa fa-inr" aria-hidden="true"></i> {{$brands->price}} /- </span></h3>
                </a>
            </div>
         @endforeach
           
        </div>
        <!-- /.row -->
      </div>    
  </div> 
@stop