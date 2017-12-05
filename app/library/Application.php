<?php

namespace App\library;

use \Illuminate\Support\Facades\Cookie;
use App\Branch;
use App\NetworkCharge;
use App\AgentCharge;





class Application
{
    
	

	 const COMPANY_NAME = 'UPGRADE CENTRAL'; 
	 const COMPANY_CAT = 'Company Category';
	 const COMPANY_ADDRESS = 'Company Address Here'; 

	public function __construct(){




	}

    public function getBranch(){

    	$cookie = Cookie::get('keybranch');
    	$branch = Branch::where('key',$cookie)->first();

    	return $branch;


    }

    public function getSentCash($amount){

    	return $amount
    	+ (AgentCharge::where('amount','>=',$amount)->first()['charge'] * 2)
    	+ (NetworkCharge::where('amount','>=',$amount)->first()['charge'] * 2);
    					     										     				

    }
}
