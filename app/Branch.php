<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Support\Facades\Cookie;

class Branch extends Model
{
    protected $table = 'branch';
    protected $primaryKey = 'branch_no';
    public $timestamps = false;


   
}
