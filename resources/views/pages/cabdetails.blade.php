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
                <p> {{ print_r($product->route_details)}}</p><br/>
                <h3>Price : <i class="fa fa-inr"></i> {{ $product->fare}} </h3>
                <br/>
                <h3>Driver : {{ $product->driver}}</h3>
               <br/>
                <a href="{{ url('book')}}/{{$product->id}}/cabs" class="btn btn-info"> Book Now</a> 
               
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Other Cabs</h3>
            </div>

        @foreach ($allproduct as $brands)
            <div class="col-sm-3 col-xs-6 img-thumbnail">
                <a href="{{ url('hotel') }}/{{ $brands->id }}">
                    <img class="img-responsive portfolio-item" src="{{ url('/') }}/{{$brands->image}}" alt="">
                    <br/>
                    <h3 align="center">{{$brands->name}}
                    <span class="btn btn-success"><i class="fa fa-inr"></i> {{$brands->fare}} /- </span></h3>
                </a>
            </div>
         @endforeach

        </div>
        <!-- /.row -->
      </div>    
  </div> 
@stop