<?php

namespace App\Http\Controllers\Admin;
use App\Models\Image;
use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\CabRequest as StoreRequest;
use App\Http\Requests\CabRequest as UpdateRequest;

class CabCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Cab');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/cab');
        $this->crud->setEntityNameStrings('cab', 'cabs');

       /* $this->crud->addColumn([    // SELECT
            'label' => 'Cab Category',
            'type' => 'select',
            'name' => 'hotel_categories_id',
            'entity' => 'hotel_categories',
            'attribute' => 'name',
            'model' => "App\Models\HotelCategory",
        ]);*/

        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Name',
        ]);
         $this->crud->addColumn([
            'name' => 'type',
            'label' => 'Cab Type',
        ]);
        $this->crud->addColumn([
            'name' => 'image',
            'label' => 'Image',
            'type' => 'image',
        ]);

         $this->crud->addColumn([
            'name' => 'fare',
            'label' => 'Price',
        ]);

        $this->crud->addColumn([
            'name' => 'cab_no',
            'label' => 'Cab Number',
        ]);
        $this->crud->addColumn([
            'name' => 'driver',
            'label' => 'Driver',
        ]);
        $this->crud->addColumn([
            'name' => 'status',
            'label' => 'Status',
            'type' => 'check',
        ]);

       // ------ CRUD FIELDS===============///


         $this->crud->addField([    // CHECKBOX
          'name' => 'type',
            'label' => "Cab Type",
            'type' => 'select_from_array',
            'options' => ['Sedans' => 'Sedans', 'SUV' => 'SUV', 'Luxury' => 'Luxury', 'Coupe' => 'Coupe', 'Hatchback' => 'Hatchback', 'Minivans' => 'Minivans'],
            'allows_null' => false,
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

       
        $this->crud->addField([    // TEXT
            'name' => 'fare',
            'label' => 'Cab Fare',
            'type' => 'number',
            // optionals
            'prefix' => "Rs",
//             'suffix' => ".00",
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);
         $this->crud->addField([
            'name' => 'name',
            'label' => 'Cab Model',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

        $this->crud->addField([    // TEXT
            'name' => 'driver',
            'label' => 'Driver Name',
            'type' => 'text',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);
       
        $this->crud->addField([
            'name' => 'slug',
            'label' => 'Slug (URL)',
            'type' => 'text',
            'hint' => 'Will be automatically generated from your name, if left empty.'
        ]);

        $this->crud->addField([    // TEXT
            'name' => 'route_details',
            'label' => 'Route Details',
            'type' => 'ckeditor',
            'placeholder' => 'Your Route Details'
        ]);
      
     
          $this->crud->addField([   // WYSIWYG
            'name' => 'cab_no',
            'label' => 'Cab Number',
            'placeholder' => 'RJ-14-3432',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

           $this->crud->addField([    // CHECKBOX
            'name' => 'status',
            'label' => 'Visible',
            'type' => 'checkbox',
            'wrapperAttributes' => [
                'class' => 'form-group col-md-6'
            ],
        ]);

        $this->crud->addField([
            'label' => 'Image',
            'type' => 'browse',
            'name' => 'image',
          
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
