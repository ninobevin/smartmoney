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
        $sends =  [];
        ///verify button

        if($request->has('generate') ||
            $request->has('btn_verify')){

            $claims = Transaction::where('status','2');
            $sends =  Transaction::where('status','3');

        }



        if($request->has('date_start')){
            $claims = $claims->whereBetween('date_claimed',[Carbon::parse($request->date_start)->startOfDay(),Carbon::parse($request->date_end)->endOfDay()]);
             $sends = $sends->whereBetween('date',[Carbon::parse($request->date_start)->startOfDay(),Carbon::parse($request->date_end)->endOfDay()]);
        }
        if($request->has('branch_no')){

            if($request->branch_no == 'none'){    

                $claims = $claims->whereNull('branch_no');
                $sends = $sends->whereNull('branch_no');
        
                
            }else{            
                $claims = $claims->where('branch_no',$request->branch_no);
                $sends = $sends->where('branch_no',$request->branch_no);
            }
        }



        if($request->has('btn_verify')){

                
               

        
             $sent_loop = Transaction::where('status','3')
                //->where('branch_no',$request->branch_no)
            ->whereNull('cash_amount')    
            ->whereBetween('date',[Carbon::parse($request->date_start)->startOfDay(),Carbon::parse($request->date_end)->endOfDay()]);


           // return dump($sent_loop->get());
            foreach($sent_loop->get() as $tran){

                //return $tran;

                $tran->updateCash();
                $tran->save();

            }   

           // return view('main.pages.report_sales',['claims'=>$claims,'sends'=>$sends]);

        }

        ////

 
    	//return view('main.pages.report_sales',['claims'=>$claims,'sends'=>$sends]);

    
      

    	// $claims = Transaction::where('status','2')
    	// ->whereDate('date_claimed','=',Carbon::today()->toDateString())
    	// ->get();

    	// 	$sends = Transaction::where('status','3')
    	// ->whereDate('date','=',Carbon::today()->toDateString())
    	// ->get();

        if(count($claims) <=0){
            $claims = [];
        }else{
            $claims = $claims->get();
        }
        if(count($sends) <=0){
            $sends = [];
        }else{
            $sends = $sends->get();
        }

    	return view('main.pages.report_sales',['claims'=> $claims ,'sends'=>$sends]);
    }

    public function account(Request $request){


            
            $date_start = isset($request->date_start) ? 
                            Carbon::parse($request->date_start)->startOfDay()
                         : Carbon::today()->toDateString();
            $date_end =   isset($request->date_end) ? 
                            Carbon::parse($request->date_end)->endOfDay()
                         : Carbon::today()->toDateString();

            $accounts = Account::all();

   


                 

            foreach ($accounts as $account) {
                        

                $transaction[] = Transaction::where('account',$account->account_no)
                    ->whereBetween('date',[$date_start,$date_end])
                    ->orderBy('date','asc')
                    ->get();    

            }

                    $unidentified = Transaction::whereBetween('date',[$date_start,$date_end])-> orderBy('date','asc')    
                    ->whereNull('account')
                    ->get();  


                

            return view('main.pages.account',['accounts'=>$transaction,'unidentified'=>$unidentified]);

            

    }
}
