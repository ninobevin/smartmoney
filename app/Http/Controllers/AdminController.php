<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

class AdminController extends Controller
{
    //


	public function __construct(){


		$this->middleware('auth');
            $this->middleware('accessbranch');
           // $this->middleware('accessright');

	}


    public function users(Request $request){


    	if($request->has('saveuser')){

    		

    		$user = User::find($request->id);

    		$user->status = $request->status;
    		$user->level = $request->level;
    		if($user->save()){

    			\Session::flash('success_msg','User has been updated.');

				return view('main.adminpages.users');    			

    		}else{

    			\Session::flash('error_msg','Cannot be updated.');

    			return view('main.adminpages.users');    

    		}

    	}


    	return view('main.adminpages.users');

    }
}
