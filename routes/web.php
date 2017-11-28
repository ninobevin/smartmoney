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
 //URL::forceSchema('https');


Route::get('/', function () {
    return view('test.index');
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/error/branch',function(){
   return view('errors.accesserrorbranch');
})->name('accessbranch');

Route::get('storage', function (\Illuminate\Http\Request $request)
{
    $path = storage_path('customer/' . $request->filename);

    if (!File::exists($path)) {
        abort(404);
    }

    $file = File::get($path);
    $type = File::mimeType($path);

    $response = Response::make($file, 200);
    $response->header("Content-Type", $type);

    return $response;
})->name('storage');


Route::get('/error/accesstime',function(){
   return view('errors.accesstimeout');
})->name('accesstimeout');

Route::get('/authenticate/branch',function(\Illuminate\Http\Request $request){
   
         if(isset($request->accesskey)){


            $branch = App\Branch::where('key',$request->accesskey)->first();

            if(count($branch) > 0)
            {

                 return redirect('/')
                 ->withCookie('keybranch',$request->accesskey,2628000)
                 ->withCookie('branchname',$branch->branch_name,2628000)
                 ->withCookie('appkey',$branch->branch_no,2628000);
            }else{

                 return redirect()->back();
            }

         }


        return redirect('/');

})->name('authbranch');



Route::get('/error',function(){
   return view('errors.accesserror');
})->name('accessright');


Route::get('/test', 'FilterController@test');


Route::prefix('search')->group(function () {
    Route::get('reference', 'SearchController@searchMain')->name('searchMain');
    Route::get('view', 'SearchController@view')->name('view');
    Route::get('customer', 'SearchController@searchCustomer')->name('searchCustomer');
    Route::get('searchAddress', 'SearchController@searchAddress')->name('searchAddress');
    Route::get('searchAddressView', 'SearchController@searchAddressView')->name('searchAddressView');
    Route::get('smsparse', 'SmsController@smsParse')->name('search.filtersms');
    Route::get('forcefilterIndex/{id}', 'SmsController@forcefilterIndex')->name('search.forcefilterIndex');
    Route::post('forceFilterStore/{id}', 'SmsController@forcefilterStore')->name('search.forceFilterStore');
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
    Route::post('saveQuickAddCustomer', 'CustomerController@saveQuickAddCustomer')->name('saveQuickAddCustomer');
    Route::get('edit', 'CustomerController@edit')->name('customeredit');
    Route::post('edit', 'CustomerController@saveEdit')->name('customer.saveEdit');
    Route::post('quicksearch', 'CustomerController@search')->name('customer.quicksearch');
});
Route::prefix('sms')->group(function () {
    
    Route::get('inbox', 'SmsController@viewInbox')->name('sms.inbox');
});
