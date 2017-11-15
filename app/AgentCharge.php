<?php

namespace App;

use Illuminate\Database\Eloquent\Model;




class AgentCharge extends Model
{
    //

  

    protected $table = 'agent_charge';
    public $timestamps = false;




    public function getCharge($amount){



    	return AgentCharge::where('amount','>=',$amount)->first();


    }


}
