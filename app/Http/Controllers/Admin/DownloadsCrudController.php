<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\DownloadsRequest as StoreRequest;
use App\Http\Requests\DownloadsRequest as UpdateRequest;

class DownloadsCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Downloads');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/downloads');
        $this->crud->setEntityNameStrings('downloads', 'downloads');

      // ------ CRUD COLUMNS
        $this->crud->addColumn([
            'name' => 'title',
            'label' => 'Title',
        ]);
        $this->crud->addColumn([
            'name' => 'type',
            'label' => 'Type',
        ]);

        $this->crud->addColumn([
            'name' => 'link',
            'label' => 'Link URL',
        ]);

        $this->crud->addColumn([
            'name' => 'visible',
            'label' => 'Status',
            'type' => 'check',
        ]);

       // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'title',
            'label' => 'Title',
        ]);
         $this->crud->addField([    // CHECKBOX
          'name' => 'type',
            'label' => "Downloads Type",
            'type' => 'select_from_array',
            'options' => ['Ebook' => 'Ebook', 'Music' => 'Music', 'Fonts' => 'Fonts', 'Other' => 'Other'],
            'allows_null' => false,
        ]);
        

        $this->crud->addField([    // Image
            'name' => 'link',
            'label' => 'Upload Files',
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
