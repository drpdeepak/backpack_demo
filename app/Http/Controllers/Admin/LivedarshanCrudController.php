<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\LivedarshanRequest as StoreRequest;
use App\Http\Requests\LivedarshanRequest as UpdateRequest;

class LivedarshanCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Livedarshan');
         $this->crud->setRoute(config('backpack.base.route_prefix', 'admin').'/livedarshans');
        $this->crud->setEntityNameStrings('livedarshan', 'livedarshans');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

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
            'name' => 'publish_date',
            'label' => 'Publish Date',
        ]);
      
         // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Name',
        ]);
       
        $this->crud->addField([    // TEXT
            'name' => 'publish_date',
            'label' => 'Publish Date',
             'type' => 'date_picker',
               'date_picker_options' => [
                  'todayBtn' => true,
                  'format' => 'dd-mm-yyyy',
                  'language' => 'en'
               ],
        ]);
       
        $this->crud->addField([   // WYSIWYG
            'name' => 'description',
            'label' => 'Category Description',
            'type' => 'ckeditor',
            'placeholder' => 'Your description here',
        ]);

        $this->crud->addField([    // Image
            'label' => "Image",
            'name' => "image",
            'type' => 'browse',
           /* 'upload' => true,
            'crop' => false, 
            'aspect_ratio' => 1.3, 
            'prefix' => 'uploads/livedarshan/'*/
        ]);

         $this->crud->addField([   // WYSIWYG
            'name' => 'visible',
            'label' => 'Visible',
            'type' => 'checkbox',
        ]);

        
        $this->crud->enableAjaxTable();
    }

    public function store(StoreRequest $request)
    {
        
      return  $redirect_location = parent::storeCrud();
       
    }

    public function update(UpdateRequest $request)
    {
       
     return $redirect_location = parent::updateCrud();
      
    }
}
