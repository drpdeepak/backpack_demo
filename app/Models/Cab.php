<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Cab extends Model
{
    use CrudTrait;
 protected $table = 'cabs';
    protected $primaryKey = 'id';

    protected $fillable = ['name','type','fare','image','cab_no','route_details','driver','slug','status'];

    protected $casts = [
        'status'  => 'boolean'
    ];


     public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'slug_or_name',
            ],
        ];
    }
}
