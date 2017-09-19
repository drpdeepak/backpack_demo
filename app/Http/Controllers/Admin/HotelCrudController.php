<?php

namespace App\Http\Controllers\Admin;
use App\Models\Image;
use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\HotelRequest as StoreRequest;
use App\Http\Requests\HotelRequest as UpdateRequest;

class HotelCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Hotel');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/hotel');
        $this->crud->setEntityNameStrings('hotel', 'hotels');

        // ------ CRUD COLUMNS
        $this->crud->addColumn([    // SELECT
            'label' => 'Hotel Category',
            'type' => 'select2',
            'name' => 'hotel_categories_id',
            'entity' => 'hotel_categories',
            'attribute' => 'name',
            'model' => "App\Models\HotelCategory",
        ]);
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Name',
        ]);
        $this->crud->addColumn([
            'name' => 'image1',
            'label' => 'Image',
            'type' => 'image',
        ]);

         $this->crud->addColumn([
            'name' => 'price',
            'label' => 'Price',
        ]);

        $this->crud->addColumn([
            'name' => 'email',
            'label' => 'Email',
        ]);
        $this->crud->addColumn([
            'name' => 'rating',
            'label' => 'Rating',
        ]);
        $this->crud->addColumn([
            'name' => 'visible',
            'label' => 'Status',
            'type' => 'check',
        ]);

       // ------ CRUD FIELDS===============///


         $this->crud->addField([    // CHECKBOX
            'name' => 'visible',
            'label' => 'Visible Hotel',
            'type' => 'checkbox',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-3'
            ],
        ]);
        $this->crud->addField([    // CHECKBOX
            'name' => 'featured',
            'label' => 'Featured Hotel',
            'type' => 'checkbox',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-3'
            ],
        ]);
        $this->crud->addField([    // TEXT
            'name' => 'price',
            'label' => 'Product Price',
            'type' => 'number',
            // optionals
            'prefix' => "Rs",
//             'suffix' => ".00",
            'wrapperAttributes' => [
                'class' => 'form-group col-md-3'
            ],
        ]);
        $this->crud->addField([    // TEXT
            'name' => 'rating',
            'label' => 'Hotel Rating',
            'type' => 'number',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-3'
            ],
        ]);
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Name',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);
        $this->crud->addField([
            'name' => 'slug',
            'label' => 'Slug (URL)',
            'type' => 'text',
            'hint' => 'Will be automatically generated from your name, if left empty.',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
            // 'disabled' => 'disabled'
        ]);

        $this->crud->addField([    // SELECT
            'label' => 'Hotel Category',
            'type' => 'select2',
            'name' => 'hotel_categories_id',
            'entity' => 'hotel_categories',
            'attribute' => 'name',
            'model' => "App\Models\HotelCategory",
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

        $this->crud->addField([    // TEXT
            'name' => 'meta_title',
            'label' => 'Meta Title',
            'type' => 'text',
            'placeholder' => 'Your meta title here',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
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

         $this->crud->addField([   // WYSIWYG
            'name' => 'address',
            'label' => 'Address',
            'type' => 'text',
            'placeholder' => 'Address Details',
             'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

          $this->crud->addField([   // WYSIWYG
            'name' => 'url',
            'label' => 'Hotel Website',
            'type' => 'url',
            'placeholder' => 'http://abc.com',
             'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

          $this->crud->addField([   // WYSIWYG
            'name' => 'email',
            'label' => 'Email',
            'type' => 'email',
            'placeholder' => 'Email Address',
             'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

        $this->crud->addField([   // WYSIWYG
            'name' => 'contact',
            'label' => 'Mobile',
            'type' => 'text',
            'placeholder' => 'Enter Mobile No',
             'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

        $this->crud->addField([
            'label' => 'Accomadation Images1',
            'type' => 'browse',
            'name' => 'image1',
            'entity' => 'products',
            'upload' => true,
            'disk' => 'uploads/hotels',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-4'
            ],
        ]);
        $this->crud->addField([
            'label' => 'Accomadation Images1',
            'type' => 'browse',
            'name' => 'image2',
            'entity' => 'products',
            'upload' => true,
            'disk' => 'uploads/hotels',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-4'
            ],
        ]);

        $this->crud->addField([
            'label' => 'Accomadation Images3',
            'type' => 'browse',
            'name' => 'image3',
            'entity' => 'products',
            'upload' => true,
            'disk' => 'uploads/hotels',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-4'
            ],
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
