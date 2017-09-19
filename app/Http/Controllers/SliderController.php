<?php

namespace App\Http\Controllers;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\SliderCrudRequest as StoreRequest;
use App\Http\Requests\SliderCrudRequest as UpdateRequest;

class SliderController extends CrudController {

    public function setup() {
        $this->crud->setModel("App\Slider");
        $this->crud->setRoute("admin/slider");
        $this->crud->setEntityNameStrings('slide', 'slider');

        $this->crud->setColumns(['name']);

        $this->crud->addField([
        'name' => 'name',
        'label' => "Slider name"
        ]);

        $this->crud->addField([ // image
        'name' => 'image_url',
        'label' => "Slider Image",
        'type' => 'image',
        'upload' => true,
        'crop' => false, // set to true to allow cropping, false to disable
        'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
         'prefix' => 'uploads/' // in case you only store the filename in the database, this text will be prepended to the database value
        ]);

      
    }

    public function store(StoreRequest $request)
    {
        return parent::storeCrud();
    }

    public function update(UpdateRequest $request)
    {
        return parent::updateCrud();
    }
}