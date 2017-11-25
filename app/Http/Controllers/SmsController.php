<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Sms;

use App\Transaction;
use App\Http\Requests\ForcefilterStore;
use Illuminate\Support\Facades\Auth;

class SmsController extends Controller
{
    //



     public function __construct()
     {
            $this->middleware('auth');
            $this->middleware('accessbranch');
            $this->middleware('accessright');
     }


    public function smsParse(Request $request){


    	$sms = Sms::where('id',$request->id)->first();

    	
    	return view('main.pages.smsparse',['sms'=>$sms]);

    }

    public function viewInbox(Request $request){

    	return view('main.pages.inbox');
    }
    public function forcefilterIndex(Request $request){


        $sms = Sms::find(decrypt($request->id));


        return view('main.pages.forcefilter',['sms'=>$sms]);

    }

    public function forcefilterStore(Request $request){


         $date = date('Y-m-d H:i:s',$request->date/1000);

           
         ///reference number  
         if( strpos($request->sms,$request->ref_no) === false){

            $err[] = 'Reference not found' ;

         }else{

            $check_reference = Transaction::where('ref_no',$request->ref_no)
            ->where('direction',$request->direction)->get();

            if(count($check_reference) > 0){
                $err[] = 'Reference already existed' ;
            }else{

                $direction = $request->direction;
                $ref_no = $request->ref_no;
            }
         }

         //amount 
         if(strpos($request->sms,$request->amount) === false){

            $err[] = 'Amount not found' ;
            
         }else{
            $amount = preg_replace("/[,]/", '', $request->amount);
         }
         ///smartmoney number
         if(!empty(trim($request->smartmoney))){

             if(strpos($request->sms,$request->smartmoney) === false){

                $err[] = 'Mobile/Smartmoney not found' ;
            
             }

         }
         //Commission
          if(!empty(trim($request->com))){

             if(strpos($request->sms,$request->com) === false){

                $err[] = 'Commission not found' ;
            
             }else{

                $com = preg_replace("/[,]/", '', $request->com);

             }

         }else{
            $com = App\Charge::getCharge($amount);
         }
         ///balance
          if(!empty(trim($request->balance))){

             if(strpos($request->sms,$request->balance) === false){

                $err[] = 'Balance not found' ;
            
             }else{

                $balance = preg_replace("/[,]/", '', $request->balance);

             }

         }

        // direction
        if(empty($request->direction) || empty($request->account)){
 
                $err[] = 'Account and Transaction type is required.' ;  

        }else{

            $account = $request->account;
            $direction = $request->direction;
            $status = ($direction == '1'?'1':'3');
        }

    
        ////when validation is finished execute insertion
         if(isset($err)){

            return redirect()->back()->withErrors($err);

         }else {

            $t = new Transaction;
            $t->date = $date;
            $t->amount = $amount;
            $t->com = $com;
            $t->ref_no = $ref_no;
            $t->account = $account;
            $t->status = $status;
            $t->direction = $direction;
            $t->balance = $balance;
            $t->user_id = Auth::user()->id;
            if($t->save()){

                return redirect()->back()->with('success', 'Transaction verified.');     

            }else{

                $err[] = 'Fatal Error: Database problem' ;
                return redirect()->back()->withErrors($err);


            }




         }

        
    }
}
