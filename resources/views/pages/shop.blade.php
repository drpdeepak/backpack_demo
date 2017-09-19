@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>@if(isset($brands->name)){{$brands->name}} @else Brand @endif</h1>
    </div>
  </div>
  <div class="inner-page-container testimonial-page">
    <div class="container">
     @if(Session::has('error_message'))
<p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('error_message') }}</p>
@endif
 @if(Session::has('success_message'))
<p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success_message') }}</p>
@endif


     @if(isset($allproduct) && $allproduct!=="")
        <div class="col-md-4 col-xs-12">
              <div class="list-group">
                <?php $f=1; ?>
                <a class="list-group-item active">Product Categories</a>

                 @foreach ($allbrands as $brands)
                    <?php if($f==1){ $active="active"; }else{ $active="";} $f++; ?>
                    <a href="{{url('brands')}}/{{$brands->slug}}" class="list-group-item"> {{$brands->name}} </a>
                 @endforeach
                   <!--  <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a> -->
                </div>
        </div>
        <!-- /.row -->
        <div class="col-md-8 col-xs-12">
        <!-- Page Features -->
        <div class="row text-center">
       
        @foreach ($allproduct as $product)
            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="{{ url('/') }}/{{$product->image}}" alt="">
                    <div class="caption">
                        <h3>{{$product->name}}</h3>
                        <p><i class="fa fa-inr" aria-hidden="true"></i> {{$product->price}}/-</p>
                        <p>
                            <a href="{{ url('products') }}/{{$product->id}}" class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i> View Details</a> <a href="{{url('addProduct')}}/{{$product->id}}" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
                        </p>
                    </div>
                </div>
            </div>
             @endforeach
       
        </div></div>
        <!-- /.row -->  
        @else
          <h4>No Products..</h4>
        @endif
    </div>    
  </div>   
@stop