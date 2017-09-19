<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Downloads extends Model
{
    use CrudTrait;
   protected $table = 'downloads';
    protected $primaryKey = 'id';

    protected $fillable = ['name','type','title','link','visible'];

    protected $casts = [
        'visible'  => 'boolean'
    ];
}
