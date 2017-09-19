<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Advertisement extends Model
{
    use CrudTrait;

     protected $table = 'advertisements';
    protected $primaryKey = 'id';
    // public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['title','image','banner_position','start_date','end_date','contact_email','contact_number','is_default','image_url','status'];

    protected $casts = [
        'status'  => 'boolean'
    ];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
   
}
