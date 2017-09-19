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
       Order Details
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

<div class="row">
         <div class="col-md-12">
            <div class="box box-default">
                

               <!--  <div class="box-header with-border profile-form-title">
                   <div class="box-title">Order Details</div>
                  
               </div> -->

      <div class="box-body">
        <div class="container-fluid">
            <div class="row">
              <div class="col-ms-12">

                   <table id="example1" class="table table-bordered table-striped display dataTable" role="grid" aria-describedby="crudTable_info">
                   <thead>
                    <tr>
                      <th>S.N.</th>
                      <th>OrderID</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Mode</th>
                      <th>Card No</th>
                      <th>Amount</th>
                      <th>City</th>
                      <th>Date</th>
                      <th>Action</th>
                    </tr>
                   </thead>

                   <tbody>
                   <?php if(isset($userinfo)){ $i=1;
                     foreach($userinfo as $gg => $notes){ 
                      ?> 
                    <tr class="toprow">
                        <td>{{ $i++ }}</td>
                        <td >{{ $notes->mihpayid}}</td>
                        <td>{{ $notes->firstname}}</td>
                        <td>{{ $notes->email}}</td>
                        <td><?php if($notes->mode=='DC'){echo "Debit Card"; }elseif($notes->mode=='CC'){ echo "Credit Card";}else{ echo "Other";} ?></td>
                        <td>{{ $notes->cardnum}}</td>
                        <td>{{ $notes->amount}}</td>
                        <td>{{ $notes->city}}</td>
                        <td>{{ date('d-m-Y',strtotime($notes->created_at))}}</td>
                        <td><a href="javascript:void(0);" title="Delete" class="delete_order" data-id="{{$notes->id}}"><i class="fa fa-trash"> </a></td>
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
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
// Delete Notes Code Start here 
$(".delete_order").on("click",function(){
   var id=$(this).attr('data-id');
  var row_id= $(this).closest('tr').attr('id');
 // console.log(row_id);
  var dataval={id:id,_token:"{{ csrf_token() }}"};
  if(confirm("Are you sure for delete this order?")){
   if(id.length>0){
      $.ajax({
          url: "order/deleteorder",
          type: 'POST',
          data: JSON.stringify(dataval),
          contentType: 'application/json; charset=utf-8',
          dataType: 'json',
          async: false,
          success:function(data){
            if(data==1){
              $("#"+row_id).hide();
              $(".show_msg").html("<span class='alert alert-success'>Order deleted successfully</span>");
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
});
</script>






