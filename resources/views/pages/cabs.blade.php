@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>Cabs/Local Transport Services</h1>
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
                <a class="list-group-item active">Cab Types</a>

                    <a href="{{url('cabs-category')}}/Sedans" class="list-group-item"><img src="{{url('/')}}/uploads/cabs/sedan-car-model.png">  Sedans Cab </a>
                    <a href="{{url('cabs-category')}}/SUV" class="list-group-item"><img src="{{url('/')}}/uploads/cabs/car-suv.png"> SUV Cab </a>
                    <a href="{{url('cabs-category')}}/Luxury" class="list-group-item"><img src="{{url('/')}}/uploads/cabs/rolls-royce-luxury-car-front.png">  Luxury Cab </a>
                    <a href="{{url('cabs-category')}}/Coupe" class="list-group-item"><img src="{{url('/')}}/uploads/cabs/coupe-car.png">  Coupe Cab </a>
                    <a href="{{url('cabs-category')}}/Minivans" class="list-group-item"><img src="{{url('/')}}/uploads/cabs/car.png">  Minivans Cab </a>
                
                </div>
            </div>

            <div class="col-md-9">

               
          @foreach ($allproduct as $product)
           <div class="row thumbnail">

            <div class="col-md-5 col-sm-12 col-xs-12">
                <a href="{{ url('/')}}/cabs/{{$product->id}}">
                    <img class="img-responsive" src="{{ url('') }}/{{$product->image}}" alt="Car Image">
                </a>
            </div>
            <div class="col-md-5 col-sm-12 col-xs-12"><br/>
                <h3>Cab Name: {{$product->name}}</h3>
                <h4>Cab Type: {{$product->type}} Cab</h4>
                <p>Vichle No.: {{ $product->cab_no}}</p>
                Fare: <span class="fa fa-inr"></span> {{$product->fare}} /- 
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12"><br/><br/>
            <a class="btn btn-primary" href="{{ url('/')}}/cabs/{{$product->id}}">Book Now <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
         </div>
             @endforeach
                

            </div>
            @endif
        </div>
    </div>    
  </div>   
@stop