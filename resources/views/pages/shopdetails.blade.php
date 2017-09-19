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
                <img class="img-responsive" src="{{ url('/') }}/{{$product->image}}" alt="">
            </div>

            <div class="col-md-6">
                <h2>{{ $product->name }}</h2>
                <p> {{ print_r($product->description)}}</p><br/>
                <h3>Price : {{ $product->price}}  <del>{{ $product->old_price }}</del></h3>
                <br/>
                <h3>Is Featured : {{ $product->featured?'Yes':'No'}}</h3>
               <br/>
                <a href="{{ url('payment')}}/{{$product->id}}" class="btn btn-info"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Buy Now</a> 
                <a href="{{url('addProduct')}}/{{$product->id}}" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart</a>
            </div>

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
                    <img class="img-responsive portfolio-item" src="{{ url('/') }}/{{$brands->image}}" alt="">
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