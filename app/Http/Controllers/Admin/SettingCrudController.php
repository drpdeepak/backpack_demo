<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;
// VALIDATION
use Backpack\Settings\app\Http\Requests\SettingRequest as StoreRequest;
use Backpack\Settings\app\Http\Requests\SettingRequest as UpdateRequest;
use Image;
use File;
class SettingCrudController extends CrudController
{
    public function __construct()
    {
        parent::__construct();

        $this->crud->setModel("Backpack\Settings\app\Models\Setting");
        $this->crud->setEntityNameStrings(trans('backpack::settings.setting_singular'), trans('backpack::settings.setting_plural'));
        $this->crud->setRoute(config('backpack.base.route_prefix', 'admin').'/setting');
        $this->crud->denyAccess(['create', 'delete']);
        $this->crud->setColumns([
            [
                'name'  => 'name',
                'label' => trans('backpack::settings.name'),
            ],
            [
                'name'  => 'value',
                'label' => trans('backpack::settings.value'),
            ],
            [
                'name'  => 'description',
                'label' => trans('backpack::settings.description'),
            ],
        ]);
        $this->crud->addField([
            'name'       => 'name',
            'label'      => trans('backpack::settings.name'),
            'type'       => 'text',
            'attributes' => [
                'disabled' => 'disabled',
            ],
        ]);

      

    }

    /**
     * Display all rows in the database for this entity.
     * This overwrites the default CrudController behaviour:
     * - instead of showing all entries, only show the "active" ones.
     *
     * @return Response
     */
    public function index()
    {
        $this->crud->addClause('where', 'active', 1);

        return parent::index();
    }

    public function store(StoreRequest $request)
    {


        return parent::storeCrud();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $this->crud->hasAccessOrFail('update');

        $this->data['entry'] = $this->crud->getEntry($id);
        $this->crud->addField((array) json_decode($this->data['entry']->field)); // <---- this is where it's different
        $this->data['crud'] = $this->crud;
        $this->data['saveAction'] = $this->getSaveAction();
        $this->data['fields'] = $this->crud->getUpdateFields($id);
        $this->data['title'] = trans('backpack::crud.edit').' '.$this->crud->entity_name;

        $this->data['id'] = $id;

        // load the view from /resources/views/vendor/backpack/crud/ if it exists, otherwise load the one in the package
        return view($this->crud->getEditView(), $this->data);
    }

    public function update(UpdateRequest $request)
    {

          /*  $input = $request->all();
            $value = $input['image'];

              echo $extension = $value->getClientOriginalExtension();

         // echo $extension = $input['image'] = time().'.'.$image->getClientOriginalExtension();

        if (starts_with($value, 'data:image'))
            {
             $attribute_name = "image";
             $disk = "public";
             $destination_path = "setting_upload";

           echo $image = base64_decode($value);
            // 0. Make the image
            $image = \Image::make($value);
            // echo '<pre>'; print_r($value); echo '</pre>';
            //echo '<pre>'; print_r($image); echo '</pre>';

                //echo $filename = md5($value);
            // 1. Generate a filename.
             $filename = md5($value.time()).'.jpg';
          
            // 2. Store the image on disk.
           // \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());
            // 3. Save the path to the database
            //$this->attributes[$attribute_name] = $destination_path.'/'.$filename;
        }











 die;*/

        return parent::updateCrud();
    }
}
