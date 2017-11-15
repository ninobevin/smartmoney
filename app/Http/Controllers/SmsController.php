<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Sms;

use App\Http\Requests\ForcefilterStore;

class SmsController extends Controller
{
    //

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


        

        return view('main.pages.forcefilter',['sms'=>$sms]);

    }
}
