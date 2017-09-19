<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\OrderRequest as StoreRequest;
use App\Http\Requests\OrderRequest as UpdateRequest;

class OrderCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Order');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/order');
        $this->crud->setEntityNameStrings('order', 'orders');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

       // $this->crud->setFromDb();

       // ------ CRUD COLUMNS
       /* $this->crud->addColumn([    // SELECT
            'label' => 'Hotel Category',
            'type' => 'select2',
            'name' => 'hotel_categories_id',
            'entity' => 'hotel_categories',
            'attribute' => 'name',
            'model' => "App\Models\HotelCategory",
        ]);*/
        $this->crud->addColumn([
            'name' => 'mihpayid',
            'label' => 'Order ID',
        ]);
        $this->crud->addColumn([
            'name' => 'firstname',
            'label' => 'Name',
        ]);

        $this->crud->addColumn([
            'name' => 'email',
            'label' => 'Email',
        ]);

        $this->crud->addColumn([
            'name' => 'amount',
            'label' => 'Amount',
        ]);
        $this->crud->addColumn([
            'name' => 'status',
            'label' => 'Status',
        ]);
        $this->crud->addColumn([
            'name' => 'City',
            'label' => 'City',
        ]);
         $this->crud->addColumn([
            'name' => 'created_at',
            'label' => 'Date',
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