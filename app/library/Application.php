<?php

namespace App\library;

use \Illuminate\Support\Facades\Cookie;
use App\Branch;




class Application
{
    
	

	 const COMPANY_NAME = 'Company Name'; 
	 const COMPANY_CAT = 'Company Category';
	 const COMPANY_ADDRESS = 'Company Address Here'; 

	public function __construct(){




	}

    public function getBranch(){

    	$cookie = Cookie::get('keybranch');
    	$branch = Branch::where('key',$cookie)->first();

    	return $branch;


    }
}
