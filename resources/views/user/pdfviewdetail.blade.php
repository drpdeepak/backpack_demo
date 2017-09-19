<style>
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
    border-color: grey;

}
.table-bordered {
    border: 1px solid #ddd;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
.table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    border: 1px solid #ddd;
}
.checklist ul{ list-style: none;}
.checklist ul li{ float: left; }
</style>
<table class="table table-bordered" cellspacing="0" cellpadding="0">
	<tr><td colspan="3" align="center"><a href="{{ url('') }}" class="logo">
          <span class="logo-lg"><img src="{{url('/')}}/{{Config::get('settings.logo') }}" alt="" style="padding-top: 10px;"></span>
        </a></td></tr>
	<tr><td colspan="3" style="background-color: #DFDFDF;font-weight: bold;">Detail Form</td></tr>
	<tr style="height: 120px;">
	<td rowspan="4" style="width:100px;">
        <?php if(isset($userinfo->author_image)){ ?>
		<img style="width:100px; height: 115px;" src="{{ url('uploads/meta_users/')}}/{{$userinfo->author_image }}" class="img-responsive blah">
        <?php }else{ ?>
		<img style="width:100px; height: 115px;" src="{{ url('vendor/adminlte/dist/img/not-available.jpg') }}" class="img-responsive blah" >

        <?php } ?>

	</td>
	<td style="width:250px;">Full Name : {{ $userinfo->name?$userinfo->name:'N/A' }}</td>
	<td style="width:250px;">ID : {{ $userinfo->reg_no?$userinfo->reg_no:'N/A' }}</td>
	</tr>

	<tr>
	<td>Date of Birth: <?php if(isset($userinfo->dob)){ echo date('d/m/Y',strtotime($userinfo->dob));}else { echo 'N/A';} ?></td>
	<td>Birth Place: {{ $userinfo->birth_place?$userinfo->birth_place:'N/A' }}</td>
	</tr>

	<tr>
	<td>Mobile: {{ $userinfo->mobile?$userinfo->mobile:'' }}</td>
	<td>Land Line: {{ $userinfo->land_line?$userinfo->land_line:'N/A' }}</td>
	</tr>

	<tr>
	<td>Address1 </td><td colspan="2"> {{ $userinfo->address1?$userinfo->address1:'N/A' }}</td></tr>
	<tr><td>Postcode </td><td colspan="2">{{ $userinfo->postcode?$userinfo->postcode:'N/A' }}</td>
	</tr>
		</table>
	</td>
	</tr>
</table>