<?php

namespace App;

trait PageTemplates
{
    /*
    |--------------------------------------------------------------------------
    | Page Templates for Backpack\PageManager
    |--------------------------------------------------------------------------
    |
    | Each page template has its own method, that define what fields should show up using the Backpack\CRUD API.
    | Use snake_case for naming and PageManager will make sure it looks pretty in the create/update form
    | template dropdown.
    |
    | Any fields defined here will show up after the standard page fields:
    | - select template
    | - page name (only seen by admins)
    | - page title
    | - page slug
    */

    private function default()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);

         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }

    private function testimonial()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);

         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }

   private function gallery()
    {
        $this->crud->addField([   // Upload
                'name' => 'photos',
                'label' => 'Photos',
                'type' => 'upload_multiple',
                'upload' => true,
                'disk' => 'uploads/gallery/' 
            ]);

         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }

    private function Home()
    {
        $this->crud->addField([   // CustomHTML
                        'name' => 'content_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Content</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);
        $this->crud->addField([
                        'name' => 'slider_tag_line',
                        'label' => 'Slider Text',
                        'type' => 'textarea',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'Operating_on_basis',
                        'label' => 'Operating on 24/7 basis',
                        'type' => 'textarea',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
         $this->crud->addField([
                        'name' => 'employment_services',
                        'label' => 'Employment Services',
                        'type' => 'textarea',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
           $this->crud->addField([
                        'name' => 'training_services',
                        'label' => 'Training Services',
                        'type' => 'textarea',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
            $this->crud->addField([
                        'name' => 'who_we_are',
                        'label' => 'WHO WE ARE',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
             $this->crud->addField([
                        'name' => 'providing_recognised',
                        'label' => 'PROVIDING RECOGNISED QUALIFICATIONS',
                        'type' => 'textarea',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);

              $this->crud->addField([
                        'name' => 'trafic_management',
                        'label' => 'TRAFFIC MANAGEMENT AGENCY',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
/*
            $this->crud->addField(  [ // Table
			    'name' => 'logos',
			    'label' => 'Client Logo',
			    'type' => 'table',
		      	'fake' => true,
			    'store_in' => 'extras',
			    'entity_singular' => 'Logo', // used on the "Add X" button
			    'columns' => [
			        'logo' => 'Client Logo',
			          'type' => 'image',
			      ],
			    'max' => 5, // maximum rows allowed in the table
			    'min' => 0 // minimum rows allowed in the table

			]);*/

			/* $this->crud->addField([   // Upload
			    'name' => 'photos',
			    'label' => 'Photos',
			    'type' => 'upload_multiple',
			    'upload' => true,
			    'disk' => 'uploads' // if you store files in the /public folder, please ommit this; if you store them in /storage or S3, please specify it;
			]);*/

   


            

        $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        
        
    }


    private function about_us()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);
    }

     private function contact_us()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);

        $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }

     private function training_Main()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);

         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }
    private function training_Tab()
    {
        /*$this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);*/

         $this->crud->addField([   // CustomHTML
                        'name' => 'content_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Content</h2><hr>',
                    ]);         
            $this->crud->addField([
                        'name' => 'tab1_title',
                        'type' => 'text',
                        'label' => 'First Tab Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]); 
            $this->crud->addField([
                        'name' => 'tab1_content',
                        'type' => 'wysiwyg',
                        'label' => 'First Tab Content',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]); 
             $this->crud->addField([
                        'name' => 'tab2_title',
                        'type' => 'text',
                        'label' => 'Second Tab Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);  
            $this->crud->addField([
                        'name' => 'tab2_content',
                        'type' => 'wysiwyg',
                        'label' => 'Second Tab Content',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);  


         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);

        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }

     private function training_Default()
    {
        $this->crud->addField([
                        'name' => 'content',
                        'label' => 'Content',
                        'type' => 'wysiwyg',
                        'placeholder' => 'Your content here',
                    ]);

         $this->crud->addField([   // CustomHTML
                        'name' => 'metas_separator',
                        'type' => 'custom_html',
                        'value' => '<br><h2>Metas</h2><hr>',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_title',
                        'label' => 'Meta Title',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_description',
                        'label' => 'Meta Description',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
        $this->crud->addField([
                        'name' => 'meta_keywords',
                        'type' => 'textarea',
                        'label' => 'Meta Keywords',
                        'fake' => true,
                        'store_in' => 'extras',
                    ]);
    }
}
