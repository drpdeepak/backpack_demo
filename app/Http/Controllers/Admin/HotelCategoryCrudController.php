<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\HotelCategoryRequest as StoreRequest;
use App\Http\Requests\HotelCategoryRequest as UpdateRequest;

class HotelCategoryCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\HotelCategory');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/hotelcategory');
        $this->crud->setEntityNameStrings('hotelcategory', 'hotel_categories');

         // ------ CRUD COLUMNS
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Name',
        ]);
        $this->crud->addColumn([
            'name' => 'image',
            'label' => 'Image',
            'type' => 'image',
        ]);

        $this->crud->addColumn([
            'name' => 'slug',
            'label' => 'Slug',
        ]);

        $this->crud->addColumn([
            'name' => 'visible',
            'label' => 'Status',
            'type' => 'check',
        ]);

       // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Name',
        ]);
        $this->crud->addField([
            'name' => 'slug',
            'label' => 'Slug (URL)',
            'type' => 'text',
            'hint' => 'Will be automatically generated from your name, if left empty.',
            // 'disabled' => 'disabled'
        ]);
        
        $this->crud->addField([    // TEXT
            'name' => 'meta_title',
            'label' => 'Meta Title',
            'type' => 'text',
            'placeholder' => 'Your meta title here',
        ]);
        $this->crud->addField([    // TEXT
            'name' => 'meta_keywords',
            'label' => 'Meta Keywords',
            'type' => 'text',
            'placeholder' => 'Your meta keywords here',
        ]);
        $this->crud->addField([   // WYSIWYG
            'name' => 'meta_description',
            'label' => 'Meta Description',
            'type' => 'text',
            'placeholder' => 'Your meta description here',
        ]);
        $this->crud->addField([   // WYSIWYG
            'name' => 'description',
            'label' => 'Category Description',
            'type' => 'ckeditor',
            'placeholder' => 'Your meta description here',
        ]);

        $this->crud->addField([    // Image
            'name' => 'image',
            'label' => 'Image',
            'type' => 'browse',
        ]);

        $this->crud->addField([    // CHECKBOX
            'name' => 'visible',
            'label' => 'Status',
            'type' => 'checkbox',
        ]);

        
        $this->crud->enableAjaxTable();

       
    }

    public function store(StoreRequest $request)
    {
       
     return $redirect_location = parent::storeCrud();
      
    }

    public function update(UpdateRequest $request)
    {
       
        return $redirect_location = parent::updateCrud();
        
    }
}
