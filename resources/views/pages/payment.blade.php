@extends('layouts/layout_home')
@section('content')
     <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4">
        <h1 class="display-3">A Warm Welcome!</h1>
        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
        <a href="#" class="btn btn-primary btn-lg">Call to action!</a>
      </header>

      <!-- Page Features -->
      <div class="row text-center">
@if(isset($product))
    @foreach($product as $productlist)
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top img img-responsive" src="http://placehold.it/500x325" alt="">
            <div class="card-body">
              <h4 class="card-title">{{$productlist->name}}</h4>
              <p class="card-text">{{$productlist->details}}.</p>
            </div>
            <div class="card-footer">
       <!--  <form method="POST" action="{{url('addProduct')}}/{{$productlist->id}}"> -->
               <input type="hidden" name="product_id" value="{{$productlist->id}}">
                      <input type="hidden" name="_token" value="{{ csrf_token() }}">
                      <a href="{{url('addProduct')}}/{{$productlist->id}}" class="btn btn-primary add-to-cart">
                          <i class="fa fa-shopping-cart"></i>
                          Add to cart
                      </a>
              <a href="{{ url('payment')}}/{{$productlist->id}}" class="btn btn-info">Buy</a>
       </form>

            </div>
          </div>
        </div>
      @endforeach
    @endif
        

      </div>
      <!-- /.row -->

    </div><br/><br/>
      
@stop