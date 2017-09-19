@extends('backpack::layout')
@section('header')
<style>
.nodesign{ border: none; background: transparent; border-radius: none;  width: 100%}
#example1_filter{ text-align: right !important;margin-bottom: 8px; }
#example1_paginate { float: right; }
.show_msg{ left: 220px;
    position: absolute;
    top: 17px;
    z-index: 9999;}
</style>
    <section class="content-header">
      <h1>
       Diary Log Details
      </h1>
<p class="show_msg"></p>
   @if(Session::has('success_message'))
<p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success_message') }}</p>
@endif
@if(Session::has('error_message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('error_message') }}</p>
@endif 
      <ol class="breadcrumb">
             <li><a href="{{ url('user/dashboard') }}">{{ config('backpack.base.project_name') }}</a></li>
        <li class="active">{{ trans('backpack::base.dashboard') }} </li>
      </ol>
    </section>
@endsection
@section('content')
<!-- <style>
.file-upload-btn{ width: 35px !important; padding-left: 5px; }
.fa-download { cursor: pointer; }
</style> -->

<div class="row">
         <div class="col-md-12">
            <div class="box box-default">
                

                <div class="box-header with-border profile-form-title">
                   <div class="box-title">Diary Notes</div>
                  
               </div>

      <div class="box-body">
        <div class="container-fluid">
            <div class="row">
              <div class="col-ms-12">

                   <table id="example1" class="table table-bordered table-striped display dataTable" role="grid" aria-describedby="crudTable_info">
                   <thead>
                    <tr>
                      <th>Date</th>
                      <th>Notes</th>
                       <th>Action</th>
                    </tr>
                   </thead>

                   <tbody>
                   
                    <tr class="toprow">
                   <form method="post" action="{{ action('DiaryController@savenewnotes') }}" class="view-profile">  

                        <td style="width: 20%"></td>
                        <td style="width: 70%"><input type="text" name="notes" placeholder="Enter notes" value="" class="nodesign" id="newnotes">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                         <input type="hidden" name="user_id" value="{{ $id?$id:1 }}">
                        </td>
               
                         <td style="width: 10%"> 
                         <a href="javascript:void(0)" class="newnotes" title="Save"> <i class="fa fa-save"> </i></a></td>
                    </form>
                      </tr>
               
                  <?php if(isset($userinfo)){
                     foreach($userinfo as $gg => $notes){ 
                      ?>
                      <tr id="row_{{ $notes->id }}">
                        <td style="width: 20%">{{ $notes->created_at?$notes->created_at:''}} </td>
                        <td style="width: 70%"><input type="text" name="notes" placeholder="Enter notes" value="{{ $notes->notes?$notes->notes:''}}" class="nodesign" id="notes_{{ $notes->id }}">
                           <input type="hidden" name="user_id" class="user_id" value="{{ $notes->user_id }}">
                          <input type="hidden" name="id" class="id" value="{{ $notes->id }}">

                        </td>
                  
                         <td style="width: 10%"> <a href="javascript:void(0)" class="deletenotes" data-id="{{ $notes->id }}" title="Delete"> <i class="fa fa-trash"> </i></a> &nbsp; 

                         <a href="javascript:void(0)" class="savenotes" data-id="{{ $notes->id }}" data-userid="{{ $notes->user_id }}" > <i class="fa fa-save" title="Save"> </i></a></td>
                      </tr>
                      <?php } } ?>
                   </tbody>
                   </table> 
              </div>
          </div>
        </div>
      </div>
            

	</div>
</div>

<script type="text/javascript">
  $(document).ready(function(){
//  On click on download button show image in new tab for download

$(".newnotes").on("click",function(e){

    $(".view-profile").submit();  
  })

// Delete Notes Code Start here 

$(".deletenotes").on("click",function(){
   var id=$(this).attr('data-id');
  var row_id= $(this).closest('tr').attr('id');
 // console.log(row_id);
  var dataval={id:id,_token:"{{ csrf_token() }}"};
  if(confirm("Are you sure for delete this note?")){
   if(id.length>0){
      $.ajax({
          url: "../../diary/deletenotes",
          type: 'POST',
          data: JSON.stringify(dataval),
          contentType: 'application/json; charset=utf-8',
          dataType: 'json',
          async: false,
          success:function(data){
            if(data==1){
              $("#"+row_id).hide();
              $(".show_msg").html("<span class='alert alert-success'>Notes deleted successfully</span>");
            }
            else
            {
              $(".show_msg").html("<span class='alert alert-danger'>Something went wrong! Please try again.</span>");
            }
          }
       })
   }}
   else{
      return false;
   }

})

// End Delete Notes Section //


// Update Notes Code Start here 

$(".savenotes").on("click",function(){
   var id=$(this).attr('data-id');
  var note= $("#notes_"+id).val();
   var user_id= $(".user_id").val();
  var dataval={id:id,_token:"{{ csrf_token() }}",notes:note,user_id:user_id};
   if(id.length>0){
      $.ajax({
          url: "../../diary/updatenotes",
          type: 'POST',
          data: JSON.stringify(dataval),
          contentType: 'application/json; charset=utf-8',
          dataType: 'json',
          async: false,
          success:function(data){
            if(data==1){
             $(".show_msg").html("<span class='alert alert-success'>Note updated successfully</span>");
            }
            else
            {
              $(".show_msg").html("<span class='alert alert-danger'>Something went wrong! Please try again.</span>");
            }
          }
       })
   }
})

// End Update Notes Section //

/*

  $(".savenotes").on("click",function(e){

     if($(".nodesign").val().length<1){
        $(".show_msg").html("<span class='alert alert-danger'>Please enter some text in notes </span>");
     }else{
       $(".show_msg").html("");
       var note=$("#newnotes").val();
       var user_id= $(".user_id").val();
       var dataval={notes:note,_token:"{{ csrf_token() }}",user_id:user_id};
       $.ajax({
          url: "savenewnotes",
          type: 'POST',
          data: JSON.stringify(dataval),
          contentType: 'application/json; charset=utf-8',
          dataType: 'json',
          async: false,
          success:function(data){
            if(data==1){
              $(".show_msg").html("<span class='alert alert-success'>New notes save successfully</span>");
            }
            else
            {
              $(".show_msg").html("<span class='alert alert-danger'>Something went wrong! Please try again.</span>");
            }
          }
       })
     }
   
  })*/
})
</script>
@endsection




