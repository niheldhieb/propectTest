<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTimestampsToProspectsTable extends Migration
{
    public function up()
    {
        Schema::table('prospects', function (Blueprint $table) {
            $table->timestamps(); // This will add created_at and updated_at
        });
    }

    public function down()
    {
        Schema::table('prospects', function (Blueprint $table) {
            $table->dropTimestamps(); // This will remove created_at and updated_at
        });
    }
}
