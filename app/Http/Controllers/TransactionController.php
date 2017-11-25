<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use Illuminate\Support\Facades\Auth;


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
          $t->branch_no = 4;
          $t->save();


          \Session::flash('success_msg','Transaction successful');

          return redirect('/home');

    }
}
