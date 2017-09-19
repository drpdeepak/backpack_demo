<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class Hotel extends Model
{
    use CrudTrait;

    protected $table = 'hotels';
    protected $primaryKey = 'id';

    protected $fillable = ['hotel_categories_id','name','visible','meta_title','meta_keywords','meta_description','description','slug','price','featured','image1','image2','image3','rating','address','contact','email','url'];

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
