@extends('layouts/layout_inner')
@section('content')
<audio src="{{ url('assets')}}/music.mp3" autoplay="true"></audio>
    <div class="inner-page-banner">
    <div class="container">
      <h1>Live Darshan</h1>
    </div>
  </div>
  <style>
  .well{ background: url('{{ url('/') }}/assets/images/live-darshan.jpg') no-repeat center; background-size:cover;  height:auto;}
  </style>
  <div class="inner-page-container testimonial-page">
    <div class="container">
         <div class="row">
   
            <div class="col-md-12">
                <div class="col-md-3 col-sm-3 col-xs-12">
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                 <div class="form-group">
                  <input type="text" id="Date"  name="date" class="form-control" placeholder="Select Date">
                </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12">
                 <div class="form-group">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
                </div>
              <br/><br/>
             
               <div class="col-md-12 col-sm-12 col-xs-12 well">

                <img src="{{ url('/') }}/assets/images/bells.gif" class="pull-left" 
                style="position: absolute;margin-top: 0px;margin-left: 0;" >
                <img src="{{ url('/') }}/assets/images/bells.gif" class="pull-right" style=" margin-top: 0px;right: 0; position: absolute;">
               <img src="{{ url('/') }}/assets/images/mala.png" style="width: 100%;
    margin: auto;z-index: 9999">
               @if(!empty($dailyschedule))
                <img src="{{ url('/') }}/{{$dailyschedule->image}}" class="img img-responsive" style="margin:auto; margin-top: -20px">


               @endif
               </div>
            </div>
           
        </div>
    </div>    
  </div>   
@stop