<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class HotelCategory extends Model
{
    use CrudTrait;

    protected $table = 'hotel_categories';
    protected $primaryKey = 'id';

    protected $fillable = ['name','visible','meta_title','meta_keywords','meta_description','description','image','slug'];

    protected $casts = [
        'visible'  => 'boolean'
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
