@extends('layouts/layout_inner')
@section('content')
<div class="inner-page-banner">
    <div class="container">
      <h1><?php echo $page->title; ?></h1>
    </div>
  </div>
  <div class="inner-page-container white-container training-container">
    <div class="container">
      
      <div class="training-content">
       <?php echo $page->content; ?>
      </div>
    </div>
  </div>
@stop