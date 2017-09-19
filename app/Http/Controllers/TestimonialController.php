<?php

namespace App\Http\Controllers;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\TestimonialCrudRequest as StoreRequest;
use App\Http\Requests\TestimonialCrudRequest as UpdateRequest;

class TestimonialController extends CrudController {

    public function setup() {
        $this->crud->setModel("App\Testimonial");
        $this->crud->setRoute("admin/testimonial");
        $this->crud->setEntityNameStrings('testimonial', 'testimonials');

        //$this->crud->setColumns(['author_name']);
         $this->crud->addColumn([
                                'name' => 'author_name',
                                'label' => 'Author Name',
                                
                            ]);

         $this->crud->addColumn([
                                'name' => 'author_post',
                                'label' => 'Author Post',
                                
                            ]);
        

        $this->crud->addField([
        'name' => 'author_name',
        'label' => "Author Name"
        ]);

        $this->crud->addField([
        'name' => 'author_content',
        'label' => 'Author Content',
        'type' => 'textarea'
        ]);

        $this->crud->addField([
        'name' => 'author_post',
        'label' => "Author Post"
        ]);

        $this->crud->addField([ // image
        'name' => 'author_image',
        'label' => "Author Image",
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