<?php

namespace App\Http\Controllers\Admin;
use Backpack\CRUD\app\Http\Controllers\CrudController;

use App\Http\Requests\AdvertisementRequest as StoreRequest;
use App\Http\Requests\AdvertisementRequest as UpdateRequest;

class AdvertisementCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
    $this->crud->setModel('App\Models\Advertisement');
    $this->crud->setRoute(config('backpack.base.route_prefix', 'admin') . '/advertisements');
    $this->crud->setEntityNameStrings('advertisement', 'advertisements');

       // $this->crud->allowAccess('reorder');
       // $this->crud->enableReorder('name', 1);

        // ------ CRUD COLUMNS
        $this->crud->addColumn([
            'name' => 'title',
            'label' => 'Title',
        ]);
        $this->crud->addColumn([
            'name' => 'banner_position',
            'label' => 'Position',
        ]);

        $this->crud->addColumn([
            'name' => 'image',
            'label' => 'Image',
            'type' => 'image',
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
            'name' => 'contact_email',
            'label' => 'Email',
        ]);
           $this->crud->addColumn([
            'name' => 'contact_number',
            'label' => 'Mobile',
        ]);
        

        // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'title',
            'label' => 'Title',
        ]);
        $this->crud->addField([
            'name' => 'image_url',
            'label' => 'Add Url',
            'type' => 'url',
            'hint' => 'Add Link for Redirect page',
            // 'disabled' => 'disabled'
        ]);
        
         $this->crud->addField([
            'name' => 'banner_position', // The db column name
            'label' => "Select Advertisement Position", // Table column heading
            'type' => 'select',
            'type' => 'select_from_array',
            'options' => ['header'=>'Header',
                'footer'=>'Footer',
                'sidebar'=>'Sidebar'],
            'allows_null' => false,
            'allows_multiple' => false,

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
        $this->crud->addField([   // WYSIWYG
            'name' => 'contact_email',
            'label' => 'Contact Email',
            'type' => 'email',
            'placeholder' => 'Your meta description here',
        ]);
        $this->crud->addField([   // WYSIWYG
            'name' => 'contact_number',
            'label' => 'Contact Number',
            'type' => 'number',
            'placeholder' => 'Your Mobile Number',
        ]);

        $this->crud->addField([    // Image
            'name' => 'image',
            'label' => 'Image',
            'type' => 'browse',
        ]);
        $this->crud->addField([    // CHECKBOX
            'name' => 'status',
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
