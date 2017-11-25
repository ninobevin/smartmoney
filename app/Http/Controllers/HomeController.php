<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Transaction;

use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
            $this->middleware('auth');
            $this->middleware('accessbranch');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('main.pages.home');
    }
   
}
