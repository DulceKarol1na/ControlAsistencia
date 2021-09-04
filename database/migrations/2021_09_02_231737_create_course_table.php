<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCourseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('course', function (Blueprint $table) {
            $table->id();
            $table->string('coursecode',45);
            $table->unsignedBigInteger('workingday_id');
            $table->foreign('workingday_id')->references('id')->on('workingday');
            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('program');
            $table->unsignedBigInteger('instructor_id');
            $table->foreign('instructor_id')->references('id')->on('instructor');
            $table->timestamps();
            //$table->unsignedBigInteger('coursecode_id');
            //$table->foreign('coursecode_id')->references('id')->on('coursecode');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('course');
    }
}
