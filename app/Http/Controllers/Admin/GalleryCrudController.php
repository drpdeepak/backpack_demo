<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;
use App\Models\Album;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\GalleryRequest as StoreRequest;
use App\Http\Requests\GalleryRequest as UpdateRequest;

class GalleryCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Gallery');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/galleries');
        $this->crud->setEntityNameStrings('galleries', 'galleries');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

      //  $this->crud->setFromDb();

        // ------ CRUD COLUMNS
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Name',
        ]);

         $this->crud->addColumn([    // SELECT
            'label' => 'Album',
            'name' => 'album_id',
            'entity' => 'albums',
            'attribute' => 'name',
            'model' => "App\Models\Album",
        ]);

        $this->crud->addColumn([
            'name' => 'image',
            'label' => 'Image',
            'type'  =>'image'
        ]);
      

        // ------ CRUD FIELDS
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Name',
        ]);
        
         $this->crud->addField([    // SELECT
            'label' => 'Album',
            'type' => 'select',
            'name' => 'album_id',
            'entity' => 'album',
            'attribute' => 'name',
            'model' => "App\Models\Album",
        ]);

        $this->crud->addField([    // Image
            'name' => 'image',
            'label' => 'Image',
            'type' => 'browse',
        ]);
       
        $this->crud->enableAjaxTable();
    }

    public function store(StoreRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::storeCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::updateCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }
}
