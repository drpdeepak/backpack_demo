<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IndiaState extends Model
{
 

     protected $table = 'india_states';
   
    protected $fillable = ['name','active'];
}
