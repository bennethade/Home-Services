<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('request_services', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('user_id')->comment('user_id=customer_user_id');
            $table->string('email')->nullable();
            $table->string('phone');
            $table->string('address');
            $table->string('service_category_id');
            $table->string('service_provider_id')->nullable();
            $table->string('extra_description')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('request_services');
    }
};
