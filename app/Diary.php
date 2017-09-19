<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Diary extends Model
{
	//use CrudTrait; // PermissionManager
	//use HasRoles; // PermissionManager

	 protected $table = 'diaries';
	 protected $fillable = ['notes','user_id'];

	 public $timestamps = true;
   
}
