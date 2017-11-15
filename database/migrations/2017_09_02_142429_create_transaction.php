<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransaction extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    /*
        

        tran_id int(45) AI PK
        date    datetime
        smart_money varchar(45)
        account int(45)
        ref_no  varchar(100)
        amount  decimal(20,2)
        status  int(45)
        balance decimal(20,2)
        cash_amount decimal(20,2)
        network_charge_no   int(45)
        computation_no  int(45)
        date_claimed    datetime
        service_charge  decimal(20,2)
        cust_id int(45)
        body_sms    varchar(300)
        branch_no   int(10) UN
        user_id int(10) UN
        off_cust_id varchar(45)

    */


    public function up()
    {
        
          Schema::create('transaction_sm', function (Blueprint $table) {
            $table->increments('tran_id');
            $table->datetime('date');
            $table->string('smart_money')->nullable();
            $table->int('account',)->nullable();
            $table->string('ref_no');
            $table->decimal('amount',18,2)->nullable();
            $table->int('status');
            $table->decimal('balance',18,2)->nullable();
            $table->decimal('cash_amount',18,2)->nullable();
            $table->int('network_charge_no')->nullable();
            $table->datetime('date_claimed')->nullable();
            $table->decimal('service_charge',18,2)->nullable();
            $table->int('cust_id')->nullable();
            $table->string('body_sms',500)->nullable();
            $table->int('branch_no')->nullable();
            $table->int('user_id')->nullable();
            $table->int('direction')->nullable();
            $table->string('off_cust_id')->nullable();
            $table->int('phone')->nullable();
            $table->int('sim')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
         Schema::dropIfExists('transaction_sm');
    }
}
