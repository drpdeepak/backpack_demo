<?php

Route::get('download/{user_id}', 'PdfController@download')->name('download');
Route::post('diary/savenewnotes', 'DiaryController@savenewnotes')->name('savenewnotes');
Route::post('diary/deletenotes', 'DiaryController@deletenotes')->name('deletenotes');
Route::post('diary/updatenotes', 'DiaryController@updatenotes')->name('updatenotes');

