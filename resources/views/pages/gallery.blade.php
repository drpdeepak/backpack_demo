@extends('layouts/layout_inner')
@section('content')
  
  <style>
  .galleryframe{  margin-top: 30px;}
  </style>
  <div class="inner-page-banner">
    <div class="container">
      <h1>{{ isset($album->name)?$album->name:'No Albums Avilable' }}</h1>
    </div>
  </div>
  <div class="inner-page-container white-container training-container">
    <div class="container">
   
    <?php if(!empty($allphotos)){
      foreach($allphotos as $k=> $photos){ ?>

    <div class="col-md-3 col-sm-4 col-xs-12 galleryframe">  
     <img src="{{ url('/') }}/{{$photos->image}}"  class="js-lightbox img img-thumbnail img-responsive" data-role="lightbox" data-source="{{ url('/') }}/{{$photos->image}}" data-group="group-2" data-id="2" data-caption="{{$photos->name}}">
     </div>
    <?php } } ?>
    </div>
  </div>
@stop