<?php

namespace App\Http\Controllers;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\SliderCrudRequest as StoreRequest;
use App\Http\Requests\SliderCrudRequest as UpdateRequest;

class ContactLeadController extends CrudController {

    public function setup() {
        $this->crud->setModel("App\ContactLead");
        $this->crud->setRoute("admin/contact_leads");
        $this->crud->setEntityNameStrings('Contact Lead', 'Lead');

       // $this->crud->setColumns(['name']);


        $this->crud->setColumns([
            [
                'name'  => 'name',
                'label' => 'Name',
                'type'  => 'text',
            ],
            [
                'name'  => 'email',
                'label' => trans('backpack::permissionmanager.email'),
                'type'  => 'email',
            ],
            [
                'name'  => 'message',
                'label' => 'Message',
                'type'  => 'textarea',
            ],
        ]);


        $this->crud->addField([
        'name' => 'name',
        'label' => "Name"
        ]);
         $this->crud->addField([
        'name' => 'email',
        'label' => "Email"
        ]);
        $this->crud->addField([
        'name' => 'message',
        'label' => "Message",
        'type'  => 'simplemde',
        ]);

        
        $this->crud->removeButton('create');
        //$this->crud->removeButton( 'update' );
      
      /* $this->crud->enableDetailsRow('message');
       $this->crud->allowAccess('message');*/
     
      
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