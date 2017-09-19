<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IndiaCity extends Model
{

     protected $table = 'india_cities';
   
    protected $fillable = ['name','active','state_id'];
}