<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


use Carbon\Carbon;

use Auth;

use App\NetworkCharge;
use App\AgentCharge;
use App\library\Application;


use DB;
class Transaction extends Model
{
    //





    protected $table = 'transaction_sm';
    private static $tablename = 'transaction_sm';
    protected $primaryKey = 'tran_id';
    public $timestamps = false;
    public $cash = 0;

    private $application;


    public function __construct(){


        $this->application = new Application;


    }

    //protected $fillable = ['ref_no', 'amount', 'service_charge'];



     public function customer(){

    	 return $this->hasOne('App\Customer', 'cust_id', 'cust_id');

    }
    public function getStatus(){

    	 return $this->hasOne('App\Status', 'sm_status_no', 'status');

    }
    public function getAccount(){

         return $this->hasOne('App\Account', 'account_no', 'account');

    }


    public function claim(){

    	$this->status = "2";
    	$this->date_claimed = Carbon::now();
    	$this->user_id = Auth::user()->id;

    

    }
    public function updateCash(){


        $this->setCash();        

        //$appConfig = new library\Application;

        $this->branch_no = $this->application->getBranch()->branch_no;
        $this->cash_amount = $this->cash;


    }
    public function setCash(){

        if($this->direction == '1' )

            $this->cash = $this->amount;
        else
        $this->cash = $this->amount
        + (AgentCharge::where('amount','>=',$this->amount)->first()['charge'] * 2)
        + (NetworkCharge::where('amount','>=',$this->amount)->first()['charge'] * 2);
                                                                                 

    }
    public function getCash(){

        

        
        return 0;//$application->getSentCash($this->amount);


    }


    public static function getColumnNames(){

        return  DB::select('show columns from '.self::$tablename);
    }


}


