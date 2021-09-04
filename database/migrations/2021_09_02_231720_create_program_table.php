<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProgramTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('program', function (Blueprint $table) {
            $table->id();
            $table->string('name',200);
            $table->unsignedBigInteger('type_id');
            $table->foreign('type_id')->references('id')->on('type');
            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('program');
            $table->unsignedBigInteger('workingday_id');
            $table->foreign('workingday_id')->references('id')->on('workingday');
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
        Schema::dropIfExists('program');
    }
}
