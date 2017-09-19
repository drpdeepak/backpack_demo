<?php

namespace App\Http\Controllers\Admin;
use App\Models\Image;
use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\OfferRequest as StoreRequest;
use App\Http\Requests\OfferRequest as UpdateRequest;

class OfferCrudController extends CrudController
{
    public function setup()
    {

        $this->crud->setModel('App\Models\Offer');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/offers');
        $this->crud->setEntityNameStrings('offers', 'offers');

       $this->crud->addColumn([
            'name' => 'title',
            'label' => 'Title',
        ]);
        $this->crud->addColumn([
            'name' => 'start_date',
            'label' => 'Start Date',
        ]);
        $this->crud->addColumn([
            'name' => 'end_date',
            'label' => 'End Date',
        ]);

        $this->crud->addColumn([
            'name' => 'image',
            'label' => 'Image',
            'type' => 'image',
        ]);

           $this->crud->addColumn([
            'name' => 'active',
            'label' => 'Status',
            'type' => 'check'
        ]);
        

        // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'title',
            'label' => 'Title',
            'type' => 'text',
        ]);

         $this->crud->addField([
            'name' => 'details',
            'label' => 'Offer Details',
             'type' => 'ckeditor',
            'placeholder' => 'Your offer description here',
        ]);

        $this->crud->addField([
            'name' => 'image',
            'label' => 'Offer Image',
            'type' => 'browse',
            'upload' => true,
        ]);
        
      
        $this->crud->addField([    // TEXT
            'name' => 'start_date',
            'label' => 'Start Date',
            'type' => 'date_picker',
            'date_picker_options' => [
                    'todayBtn' => true,
                    'format' => 'yyyy-mm-dd',
                    'language' => 'en'
                    ],
        ]);
        $this->crud->addField([    // TEXT
            'name' => 'end_date',
            'label' => 'Start Date',
            'type' => 'date_picker',
             'date_picker_options' => [
                    'todayBtn' => true,
                    'format' => 'yyyy-mm-dd',
                    'language' => 'en'
                    ],
        ]);
      
        $this->crud->addField([    // CHECKBOX
            'name' => 'active',
            'label' => 'Visible',
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