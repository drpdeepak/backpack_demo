@extends('layouts/layout_inner')
@section('content')
 <div class="inner-page-banner">
    <div class="container">
      <h1><?php echo $page->title; ?></h1>
    </div>
  </div>
  <div class="inner-page-container white-container training-container">
    <div class="container">
    
      <div class="qulaify-section text-center">
          <div class="qulaify-section-head text-left">
            <h2>Providing Recognised Qualifications</h2>
              <p><?php echo $page->content; ?></p>
          </div>
          <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4"> <a href="<?php echo url('lantra'); ?>">
              <div class="course-col">
                <div class="course-img">
                  <div class="valign-table">
                    <div><img src="assets/img/Lantra-Awards_logo_MASTER.png" alt=""></div>
                  </div>
                </div>
                <div class="figcaption">Lantra</div>
              </div>
              </a> </div>
            <div class="col-md-4 col-sm-4 col-xs-4"> <a href="<?php echo url('nrswa'); ?>">
              <div class="course-col">
                <div class="course-img">
                  <div class="valign-table">
                    <div><img src="assets/img/street-works-logo.jpg" alt=""></div>
                  </div>
                </div>
                <div class="figcaption">NRSWA</div>
              </div>
              </a> </div>
            <div class="col-md-4 col-sm-4 col-xs-4"> <a href="<?php echo url('cscs'); ?>">
              <div class="course-col">
                <div class="course-img">
                  <div class="valign-table">
                    <div><img src="assets/img/cscs.png" alt=""></div>
                  </div>
                </div>
                <div class="figcaption">CSCS</div>
              </div>
              </a> </div>
          </div>
      </div>
    </div>
  </div>
@stop