@extends('layouts/layout_inner')
@section('content')
    <div class="inner-page-banner">
    <div class="container">
      <h1>Testimonials</h1>
    </div>
  </div>
  <div class="inner-page-container testimonial-page">
    <div class="container">
      <div class="team-text1">
        <h2>What others say about us?</h2>
      </div><div class="row text-center grid">

     <?php  $testimonial = DB::table('testimonials')->select('author_name as name', 'author_content as content','author_post as post')->get();

         //   echo '</pre>'; print_r($testimonial); echo '</pre>';

      ?>
        @foreach ($testimonial as $testimonials)
        <div class="col-md-4 col-sm-6 col-xs-12 grid-item">
          <div class="testimonial-col">
            <p>{{ $testimonials->content}}</p>
            <span class="author-name">{{ $testimonials->name}}</span> <span class="author-post">{{ $testimonials->post}}</span> </div>
        </div>

        @endforeach
    
        
      </div>
      </div>
      
    
  </div>   
@stop