<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use Illuminate\Support\Facades\Auth;
use App\library\Application;



class TransactionController extends Controller
{
    //
       public function __construct()
      {
          $this->middleware('auth');
          $this->middleware('accessbranch');
      }





    public function claimform(Request $request){

		    $id =  $request->tran;

  			$transaction = Transaction::where('tran_id',$id)->first();  	

  			return view('main.pages.claim',['Transaction'=>$transaction]);


    }

    public function claim(Request $request){


          $bkey  =  new Application();
          $branch = $bkey->getBranch();

          if($branch->main == '1'){

            $branch_no = $request->branch_no;

          }else{
             $branch_no = $branch->branch_no;
          }

          $ref_no = $request->ref_no;
          $cust_id = $request->cust_id;
          $account = $request->account;
          $cash_amount = $request->cash_amount;


          $t = Transaction::where('ref_no',$ref_no)
              ->where('status','1')->first();



          $t->cust_id = $cust_id;
          $t->account = $account;
          $t->status = '2';
          $t->cash_amount = $cash_amount;
          $t->date_claimed = \Carbon\Carbon::now();
          $t->user_id = Auth::user()->id;
          $t->branch_no = $branch_no;
          
          if($t->save()){


            \Session::flash('success_msg','Transaction successful');

            return redirect('/home');

          }else{

           \Session::flash('error_msg','Error while executing... Transaction might already claimed by another branch.');

           return redirect('/home'); 
          }


    }

    public function verifysend(Request $request){

      if($request->has('btn_verify')){

        $save = Transaction::where('direction','=','0')
                                    ->where('tran_id',$request->tran_id)->first();
        $save->cash_amount = $request->cash_amount;
        $save->branch_no = $request->branch_no;
        $save->account = $request->account;



        if(!empty($request->cust_id)){
          $save->cust_id = $request->cust_id;
        }

        if($save->save()){


          \Session::flash('success_msg','Transaction successful');
          return redirect(route('report.sales'));  

        }else{

          \Session::flash('error_msg','Transaction Error');
          return redirect(route('report.sales'));  


        }


      }

         


       $transaction =  Transaction::where('direction','=','0')
                            ->where('tran_id',$request->tran_id)->get()->first();
      
          return view('main.pages.verifysend',['transaction'=> $transaction]);

    }
}
