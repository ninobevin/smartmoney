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



Route::get('/', function () {
    return view('test.index');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/test', 'FilterController@test');


Route::prefix('search')->group(function () {
    Route::get('reference', 'SearchController@searchMain')->name('searchMain');
    Route::get('view', 'SearchController@view')->name('view');
    Route::get('customer', 'SearchController@searchCustomer')->name('searchCustomer');
    Route::get('searchAddress', 'SearchController@searchAddress')->name('searchAddress');
    Route::get('searchAddressView', 'SearchController@searchAddressView')->name('searchAddressView');
    Route::post('smsparse', 'SmsController@smsParse')->name('search.filtersms');
});
Route::prefix('transaction')->group(function () {
    Route::post('claimform', 'TransactionController@claimform')->name('transaction.claimform');
    Route::post('claim', 'TransactionController@claim')->name('transaction.claim');
});
Route::prefix('filter')->group(function () {
    Route::get('smsfilter', 'FilterController@smsfilter')->name('filter.smsfilter');
    Route::post('smsinsert', 'FilterController@smsinsert')->name('filter.smsinsert');
    Route::get('smsSample', 'FilterController@sample')->name('filter.smsSample');
});
Route::prefix('Report')->group(function () {
    Route::get('sales', 'ReportController@sales_index')->name('report.sales');
    Route::get('account', 'ReportController@account')->name('report.account');
});
Route::prefix('customer')->group(function () {
    Route::get('saveQuickAddCustomer', 'CustomerController@saveQuickAddCustomer')->name('saveQuickAddCustomer');
    Route::get('edit', 'CustomerController@edit')->name('customeredit');
    Route::post('edit', 'CustomerController@saveEdit')->name('customer.saveEdit');
    Route::post('quicksearch', 'CustomerController@search')->name('customer.quicksearch');
});
Route::prefix('sms')->group(function () {
    
    Route::get('inbox', 'SmsController@viewInbox')->name('sms.inbox');
});
