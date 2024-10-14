<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProspectsTable extends Migration
{
    public function up()
    {
        Schema::create('prospects', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->string('email')->unique();
            $table->string('first_phone_number');
            $table->string('second_phone_number')->nullable();
            $table->string('address');
            $table->string('city');
            $table->string('country');
            $table->timestamps(); 
        });
    }

    public function down()
    {
        Schema::dropIfExists('prospects');
    }
}
