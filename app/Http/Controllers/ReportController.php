<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Transaction;
use App\Account;
use Carbon\Carbon;

class ReportController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('accessbranch');
    }

    public function sales_index(Request $request){



    	//return Carbon::today()->toDateString();


        $claims = [];
        $sends = [];

    	if($request->has('date_from')){


    		$claims = Transaction::where('status','2')
            ->where('branch_no',$request->branch_no)
    		->whereBetween('date_claimed',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])
    	->get();


    		$sends = Transaction::where('status','3')
            //->where('branch_no',$request->branch_no)
    	->whereBetween('date',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])
    	->get();

    	return view('main.pages.report_sales',['claims'=>$claims,'sends'=>$sends]);

    	}

    	// $claims = Transaction::where('status','2')
    	// ->whereDate('date_claimed','=',Carbon::today()->toDateString())
    	// ->get();

    	// 	$sends = Transaction::where('status','3')
    	// ->whereDate('date','=',Carbon::today()->toDateString())
    	// ->get();

    	return view('main.pages.report_sales',['claims'=>$claims,'sends'=>$sends]);
    }

    public function account(Request $request){


        /*
        if($request->has('date_from')){


            $transaction = Transaction::whereBetween('date',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])
        ->get();

        

        return view('main.pages.account',['transaction'=>$transaction]);

        }

        */
            
            $date_from = isset($request->date_from) ? 
                            Carbon::parse($request->date_from)->startOfDay()
                         : Carbon::today()->toDateString();
            $date_to =   isset($request->date_to) ? 
                            Carbon::parse($request->date_to)->endOfDay()
                         : Carbon::today()->toDateString();

            $accounts = Account::all();

   


                 

            foreach ($accounts as $account) {
                        

                $transaction[] = Transaction::where('account',$account->account_no)
                    ->whereBetween('date',[$date_from,$date_to])
                    ->orderBy('date','asc')
                    ->get();    

            }

                    $unidentified = Transaction::whereBetween('date',[$date_from,$date_to])-> orderBy('date','asc')    
                    ->whereNull('account')
                    ->get();  


                

            return view('main.pages.account',['accounts'=>$transaction,'unidentified'=>$unidentified]);

            




            // foreach ($accounts as $account) {
                    

            //     $transaction[] = Transaction::where('account',$account->account_no)->whereDate('date','=',Carbon::today()->toDateString())->orderBy('date')
            //     ->get();    

            // }

            // return view('main.pages.account',['accounts'=>$transaction]);




    }
}
