@extends('backpack::layout')

@section('header')
    <section class="content-header">
      <h1>
        Edit Profile
      </h1>
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
<form method="post" action="{{ action('UserController@updateprofile') }}" accept-charset="UTF-8" enctype="multipart/form-data" class="view-profile" >
<div class="row">
         <div class="col-md-12">
            <div class="box box-default">
                

                <div class="box-header with-border profile-form-title">
                   <div class="box-title">Detail Form </div>
                   <span style="float: right">
                   <a href="{{ url('admin/user') }}" class="btn btn-primary"><span class="fa fa-arrow-left"></span> &nbsp;Back</a>
                   <a href="{{'../../download/'.$userinfo->userid }}" target="_blank"><i class="fa fa-file-pdf-o btn btn-warning" aria-hidden="true"> PDF</i></a></span>
               </div>

               <div class="box-body dashboard-form profile-complete-container">
                 <div class="container-fluid">
                   <div class="row">
                    <div class="col-ms-12">
                      
                    </div>
                   </div>
                  </div>
               </div>
               <div class="box-body dashboard-form">
                 <div class="container-fluid">
                   <div class="row">
        <!-- Default box -->
   
    {!! csrf_field() !!}
	
        <div class="form-group col-md-4">
            
            <div class="profile-img-holder">
                            <?php if(isset($userinfo->author_image)){ ?>
            <img src="{{ url('uploads/meta_users/')}}/{{$userinfo->author_image }}" class="img-responsive blah">
            <?php }else{ ?>
            <img src="{{ url('vendor/adminlte/dist/img/not-available.jpg') }}" class="img-responsive blah" >

            <?php } ?> 

            <a href="javascript:void(0)" class="remove-img"><i class="ion-android-cancel"></i></a>

           </div>
           
        <div class="upload-btn">
            <label for="imgInp" class="upload_file_label btn-upload">
            <input type="file" id="imgInp" name="author_image" />
            Upload Image
            </label>
           </div>
        </div>

        <div class="form-group col-md-4">

            <label for="email">Full Name:</label>
        
            <input type="text" class="form-control" name="fname" id="fullname" value="{{ $userinfo->name?$userinfo->name:'' }}">
        </div>

         <div class="form-group col-md-4">
            <label for="email">ID:</label>
            <input type="text" class="form-control" id="id" disabled="true" name="id" value="{{ $userinfo->reg_no?$userinfo->reg_no:'' }}">
        </div>

        

        <div class="form-group col-md-4">
            <label for="email">Date of Birth:</label>
            <input type="text" class="form-control" id="Date" name="dob" value="<?php if(!empty($userinfo->dob) OR $userinfo->dob != ''){ echo date('d/m/Y',strtotime($userinfo->dob));}else { echo '';} ?>">

        </div>

         <div class="form-group col-md-4">
            <label for="email">Birth Place:</label>
            <input type="text" class="form-control" id="birth_place" name="birth_place" value="{{ $userinfo->birth_place?$userinfo->birth_place:'' }}">
        </div>


        <div class="form-group col-md-4">
         <label for="email">Address-1:</label>
        <input type="text" class="form-control" id="address-1" name="address1" value="{{ $userinfo->address1?$userinfo->address1:'' }}" >
        </div>

       
         <div class="form-group col-md-4">
          <label for="email">Postcode:</label>
          <input type="text" style="text-transform: uppercase" class="form-control" id="postcode" name="postcode" value="{{ $userinfo->postcode?$userinfo->postcode:'' }}" >
        </div>         

      <div class="form-group col-md-4">
        <label for="land_line">Landline</label>
        <input type="text" class="form-control" id="land_line" name="land_line" value="{{ $userinfo->land_line?$userinfo->land_line:'' }}">
     
        </div>
      
        <div class="form-group col-md-4">
            <label for="mobile">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value="{{ $userinfo->mobile?$userinfo->mobile:'' }}">
        </div>
        
        <div class="form-group col-md-4">

                 <input type="hidden" id="metaid" name="metaid" value="{{ $userinfo->metaid?$userinfo->metaid:'' }}">
                 <input type="hidden" id="userid" name="id" value="{{ $userinfo->userid?$userinfo->userid:'' }}">
                <input type="hidden" id="old_author_image" name="old_author_image" value="{{ $userinfo->author_image?$userinfo->author_image:'' }}">
               
              
             
        </div>

    </div></div></div>

     <div class="box box-default">

   <div class="box-body dashboard-form">

<div class="box-footer">

                <div id="saveActions" class="form-group">

    <input type="hidden" name="save_action" value="save_and_back">

    <div class="btn-group">

        <button type="submit" class="btn btn-success" id="savebutton">
            <span class="fa fa-save" role="presentation" aria-hidden="true"></span> &nbsp;
            <span data-value="save_and_back">Save Details</span>
        </button>
    </div>

    <a href="{{ Request::url() }}" class="btn btn-default"><span class="fa fa-ban"></span> &nbsp;Cancel</a>
</div>
		    </div><!-- /.box-footer-->

		   
		  </div><!-- /.box -->
		  </form>
	</div>
</div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">  
$(document).ready(function(){
// If author image not avilable then no image will show
$(".ion-android-cancel").on("click",function(){
    var blankimg="{{ url('vendor/adminlte/dist/img/not-available.jpg') }}";
    console.log(blankimg);
    $(".blah").attr('src',blankimg);
     $("#old_author_image").val('');

})

//  On click on download button show image in new tab for download
	$(".fa-download").on("click",function(e){
		 e.preventDefault();
		var url=$(this).attr('data-href');
		 window.open(url,'_blank');

	})
// End No Image option on remove image 

// For Display Image Preview of uploaded file for Author Image
    function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('.blah').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function(){
    readURL(this);
});

 $('.custom-inline-upload input[type="file"]').on('change', function() {
       var file_name = $(this).val().replace(/\\/g, '/').replace(/.*\//,'');
         $(this).parents('.custom-inline-upload').find('input[type="text"]').val(file_name);
     });
})
</script>


