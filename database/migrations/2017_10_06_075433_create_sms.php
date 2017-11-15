<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    /*
    id  int(10) UN AI PK
    body    varchar(500)
    date    bigint(20) UN
    address varchar(45)
    */

    public function up()
    {
        //
        Schema::create('sms', function (Blueprint $table) {
            $table->increments('id');
            $table->string('body',500);
            $table->bigint('date',20)->nullable();
            $table->string('address')->nullable();
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

        Schema::dropIfExists('sms');
    }
}
