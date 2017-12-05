<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NetworkCharge extends Model
{
    //
	protected $table = 'network_charge';
	public $timestamps = false;




	public function getNetworkCharge($amount){



		return NetworkCharge::where('amount','>=',$amount)->first();


	}


}
