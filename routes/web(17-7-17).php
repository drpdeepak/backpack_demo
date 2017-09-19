<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');

Route::post('homepage_form', 'HomeController@formsubmit');

Route::get('/blog/{post}', 'ArticleController@index');


/*********************user register routes*******************************/
    Route::get('/register', 'UserController@index');
 	Route::post('/register', 'UserController@register');
/* 	Route::get('/thank-you', function () {
    return view('welcome');
	})->name('thankyou');*/

 	Route::get('login', 'UserController@login');
 	Route::post('login', 'UserController@userlogin');
	Route::get('password/reset', 'UserController@resetpassword');
	Route::post('password/reset', 'UserController@restpasswodsubmit');
	Route::get('forgotpassword/verify/{token}','UserController@changeforgotpassword_token');
	Route::post('forgotpassword-change','UserController@changeforgotpassword');
 	

 	
/************************Add Slider Routes*************************************/  

Route::group(['prefix' => config('backpack.base.route_prefix', 'admin'), 'middleware' =>  ['role:Administrator,access_backend']], function () {
   // CRUD::resource('permission', '\Backpack\PermissionManager\app\Http\Controllers\PermissionCrudController');
   // CRUD::resource('role', '\Backpack\PermissionManager\app\Http\Controllers\RoleCrudController');
    CRUD::resource('user', 'Admin\UserCrudController');
    CRUD::resource('menu-item', 'Admin\MenuItemCrudController');
    CRUD::resource('article', 'Admin\ArticleCrudController');
    CRUD::resource('category', 'Admin\CategoryCrudController');
    CRUD::resource('tag', 'Admin\TagCrudController');
     CRUD::resource('setting', 'Admin\SettingCrudController');
    CRUD::resource('contact_leads', 'ContactLeadController');
    CRUD::resource('slider', 'SliderController');
    CRUD::resource('testimonial', 'TestimonialController'); 
    CRUD::resource('page', '\Backpack\PageManager\app\Http\Controllers\Admin\PageCrudController');

    // !!! DIFFERENT ADMIN PANEL FOR USER POSTS
    Route::group(['prefix' => 'user/{user_id}'], function()
    {
       // CRUD::resource('approve', 'Admin\UserCrudController');
 	      Route::get('approve','UserController@approved');
        Route::get('unapprove','UserController@unapproved');
        Route::get('profileview', 'UserController@profileview')->name('profileview');
        Route::post('profileviewupdate', 'UserController@profileview_update')->name('profileview_update');
        Route::get('diary_log', 'DiaryController@index')->name('diary_log');
    });

   

});

       

      
/** CATCH-ALL ROUTE for Backpack/PageManager - needs to be at the end of your routes.php file  **/
Route::get('{page}/{subs?}', ['uses' => 'PageController@index'])
    ->where(['page' => '^((?!admin).)*$', 'subs' => '.*']);




