@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>Downloads</h1>
    </div>
  </div>
  <style>
  .ratings {color: #d17581;}
  </style>
  <div class="inner-page-container testimonial-page">
    <div class="container">
         <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                <?php $f=1; ?>
                <a class="list-group-item active">Downloads Types</a>

                    <a href="{{url('downloads-category')}}/Ebook" class="list-group-item"><img src="{{url('/')}}/uploads/downloads/pdf.png">  PDF Files </a>
                    <a href="{{url('downloads-category')}}/Music" class="list-group-item"><img src="{{url('/')}}/uploads/downloads/mp3.png"> Music Files</a>
                  
                </div>
            </div>

            <div class="col-md-9">

               
          @foreach ($brands as $product)
          <?php if($product->type=="Ebook"){ ?>
           <div class="row thumbnail">
            <div class="col-md-2 col-sm-6 col-xs-12">
                <a href="{{ url('/')}}/uploads/{{$product->link}}">
                    <img class="img-responsive" src="{{url('/')}}/uploads/downloads/pdf.png" alt="Car Image">
                </a>
            </div>
            <div class="col-md-8 col-sm-12 col-xs-12"><br/>
                <h3> {{$product->title}}</h3>
                <h4>{{$product->type}} PDF File</h4>
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12"><br/>
            <a class="btn btn-primary" href="{{ url('/')}}/{{$product->link}}" target="_blank">Download <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
         </div><?php }else{ ?>
    <div class="row thumbnail">
            <div class="col-md-2 col-sm-6 col-xs-12">
                <a href="{{ url('/')}}/uploads/{{$product->link}}">
                    <img class="img-responsive" src="{{url('/')}}/uploads/downloads/mp3.png" alt="Car Image">
                </a>
            </div>
            <div class="col-md-8 col-sm-12 col-xs-12"><br/>
                <h3> {{$product->title}}</h3>
                <h4>{{$product->type}} MP3 File</h4>
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12"><br/>
            <a class="btn btn-primary" href="{{ url('/')}}/{{$product->link}}" target="_blank">Download <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
         </div>
         <?php } ?>
              @endforeach
                

            </div>
          
        </div>
    </div>    
  </div>   
@stop