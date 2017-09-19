@extends('layouts/layout_inner')
@section('content')
  
  <div class="inner-page-banner">
    <div class="container">
      <h1><?php echo $page->title; ?></h1>
    </div>
  </div>
  <div class="inner-page-container white-container training-container">
    <div class="container">
      

      <?php 
      	      $extrafield = json_decode($page->extras, true);
      	     // print_r($extrafield); 

      ?>
      
      <div class="training-content">
        <ul class="nav nav-tabs">
    <?php foreach ($extrafield as $key => $value) {
           	if($key == 'tab1_title'){ ?>
        		 <li class="active"><a data-toggle="tab" href="#12D"><?php echo $value; ?></a></li>
        	<?php }elseif ($key == 'tab2_title') { ?>
        		 <li><a data-toggle="tab" href="#12AB"><?php echo $value; ?></a></li>
        	<?php }
        } ?>
      </ul>
        <div class="tab-content">
        	<?php foreach ($extrafield as $key => $value) {
           	if($key == 'tab1_content'){ ?>

           			   <div id="12D" class="tab-pane fade in active">
           			    <?php echo $value; ?>
    		 		</div>

           	<?php }elseif ($key == 'tab2_content') { ?>
           		  <div id="12AB" class="tab-pane fade">
        		 <?php echo $value; ?>
    		 		</div>
        	<?php }
        } ?>
        </div>
      </div>
    </div>
  </div>
@stop