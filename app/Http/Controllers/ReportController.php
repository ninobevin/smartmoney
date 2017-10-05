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
    }

    public function sales_index(Request $request){



    	//return Carbon::today()->toDateString();


    	if($request->has('date_from')){






    		$claims = Transaction::where('status','2')
    		->whereDate('date_claimed',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])
    	->get();

    		$sends = Transaction::where('status','3')
    	->whereBetween('date',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])
    	->get();

    	return view('main.pages.report_sales',['claims'=>$claims,'sends'=>$sends]);

    	}

    	$claims = Transaction::where('status','2')
    	->whereDate('date_claimed','=',Carbon::today()->toDateString())
    	->get();

    		$sends = Transaction::where('status','3')
    	->whereDate('date','=',Carbon::today()->toDateString())
    	->get();

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
            $accounts = Account::all();

            if($request->has('date_from')){


                 

                foreach ($accounts as $account) {
                        

                    $transaction[] = Transaction::where('account',$account->account_no)
                    ->whereBetween('date',[Carbon::parse($request->date_from)->startOfDay(),Carbon::parse($request->date_to)->endOfDay()])->orderBy('date')
                    ->get();    

                }

                

                 return view('main.pages.account',['accounts'=>$transaction]);

            }



            foreach ($accounts as $account) {
                    

                $transaction[] = Transaction::where('account',$account->account_no)->whereDate('date','=',Carbon::today()->toDateString())->orderBy('date')
                ->get();    

            }

            return view('main.pages.account',['accounts'=>$transaction]);




    }
}
