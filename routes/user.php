<?php 

Route::get('dashboard', 'DashboardController@index')->name('dashboard');
Route::get('editprofile', 'UserController@editprofile')->name('editprofile');
Route::post('editprofile', 'UserController@updateprofile')->name('editprofile');
Route::get('logout', 'UserController@logout');

?>