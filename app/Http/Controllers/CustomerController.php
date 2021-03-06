<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Customer;

class CustomerController extends Controller
{
    //
        public function __construct()
        {
            $this->middleware('auth');
        }
        
        public function saveQuickAddCustomer(Request $request)
        {
        
        
        $c = new Customer();
        $r = $request;
        
        $c->fname = strtoupper($r->firstname);
        $c->mname = strtoupper($r->middleinitial);
        $c->lastname = strtoupper($r->lastname);
        $c->loc_id = $r->address;
        
        
        
        foreach ($c->getAttributes() as $f) {
            if (is_null($f)) {
                return "<p class='text-danger'><i class='fa fa-exclamation-triangle'></i> Empty field detected. Please fill out all fields.<p>";
            }
        }
        
        $cCount = Customer::where('fname', $c->fname)
        ->where('mname', $c->mname)
        ->where('lastname', $c->lastname)
        ->count();
        
        
        if ($cCount) {
            return "<p class='text-danger'><i class='fa fa-exclamation-triangle'></i> Customer Name is already taken.<p>";
        }
        
        
        
        $result = $c->save();
        
        if ($result) {
            return "<p class='text-success'><i class='fa fa-check'></i> Customer successfully saved.<p>";
        } else {
            return "<p class='text-danger'><i class='fa fa-exclamation-triangle'></i> Customer not saved.<p>";
        }
    }
    
    public function edit(Request $request)
    {
        
        $customer = Customer::find($request->id);
        
        return view('main.pages.editcustomer',['customer'=>$customer]);
    }
    public function saveEdit(Request $request)
    {
        $customer = Customer::find($request->id);

        $cCount = Customer::where('fname', $request->firstname)
        ->where('mname', $request->middleinitial)
        ->where('lastname', $request->lastname)
        ->where('cust_id','!=',$request->id)
        ->count();


        if($cCount >= 1)
            return redirect()->back()->with(['error' => 'Duplicate name pls verify. Update not saved','customer' => $customer]);

    

        $customer->fname = strtoupper($request->firstname);
        $customer->mname = strtoupper($request->middleinitial);
        $customer->lastname = strtoupper($request->lastname);
        $customer->loc_id = $request->address;
        $customer->dob = $request->dob;
        $customer->contact = $request->contact;
        $customer->gender = $request->gender;


        $customer->save();

        
        return view('main.pages.editcustomer',['customer' => $customer,'message' => 'Update success.']);
    }

    public function search(Request $request)
    {



    
        
        

        $customer = Customer::find($request->id);

        $cCount = Customer::where('fname', $request->firstname)
        ->where('mname', $request->middleinitial)
        ->where('lastname', $request->lastname)
        ->where('cust_id','!=',$request->id)
        ->count();

       
        return $cCount;

        
         
           
    }



}
