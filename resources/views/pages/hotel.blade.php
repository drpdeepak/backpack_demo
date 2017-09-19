@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>Hotels/Accommodations</h1>
    </div>
  </div>
  <style>
  .ratings {color: #d17581;}
  </style>
  <div class="inner-page-container testimonial-page">
    <div class="container">
         <div class="row">
         @if(isset($allproduct) && $allproduct!=="")
            <div class="col-md-3">
                <div class="list-group">
                <?php $f=1; ?>
                <a class="list-group-item active">Accommodation Categories</a>

                 @foreach ($allpcategory as $brands)
                    <?php if($f==1){ $active="active"; }else{ $active="";} $f++; ?>

                    <a href="{{url('hotels')}}/{{$brands->slug}}" class="list-group-item"><img src="{{url('/')}}/{{$brands->image}}">  {{$brands->name}} </a>
                 @endforeach
                   <!--  <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a> -->
                </div>
            </div>

            <div class="col-md-9">

                <div class="row">
                   @foreach ($allproduct as $product)
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="{{ url('') }}/{{$product->image1}}" alt="">
                            <div class="caption">
                                
                                <h4><a href="#">{{$product->name}}</a>
                                </h4>
                                <p> <a target="_blank" href="{{$product->url?$product->url:'#'}}">{{$product->address}}</a>.</p>
                            </div>
                            <h4 ><a href="{{ url('hotel') }}/{{ $product->id }}" class="btn btn-info">
                            <i class="fa fa-eye" aria-hidden="true"></i> View Details</a> &nbsp;<span class="btn btn-success"><i class="fa fa-inr" aria-hidden="true"></i> {{$product->price}} /-</span></h4>
                            <br/>
                            <div class="ratings">
                                <p class="pull-right">Reviews</p>
                                <p> <?php for($i=1;$i<=5;$i++){
                                    if($i<=$product->rating){
                                  ?>
                                <span class="glyphicon glyphicon-star"></span>
                                  <?php } else { ?>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                <?php } } ?>
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
            @endif
        </div>
    </div>    
  </div>   
@stop