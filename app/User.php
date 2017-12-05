<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    public $status_option = ['Active','Deactivated','For Approval'];

    public $level_option = ['2' => 'Admin','3' => 'Cashier'];

    protected $dates = ['created_at', 'updated_at'];

    protected $fillable = [
        'name', 'email', 'password','username','level'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
