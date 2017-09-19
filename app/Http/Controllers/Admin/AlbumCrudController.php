<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\AlbumRequest as StoreRequest;
use App\Http\Requests\AlbumRequest as UpdateRequest;

class AlbumCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Album');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/albums');
        $this->crud->setEntityNameStrings('album', 'albums');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

        $this->crud->setFromDb();

      $this->crud->allowAccess('reorder');
        $this->crud->enableReorder('name', 1);

        // ------ CRUD COLUMNS
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Name',
        ]);
        $this->crud->addColumn([
            'name' => 'slug',
            'label' => 'Slug',
        ]);
        $this->crud->addField([    // CHECKBOX
            'name' => 'visible',
            'label' => 'Status',
            'type' => 'checkbox',
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
