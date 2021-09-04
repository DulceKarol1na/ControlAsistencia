<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAssistantTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assistant', function (Blueprint $table) {
            $table->id();
            $table->string('name',45);
            $table->string('lastaname',45);
            $table->string('email',45);
            $table->string('type',45);
            $table->unsignedBigInteger('workingday_id');
            $table->foreign('workingday_id')->references('id')->on('workingday');
            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('program');
            $table->unsignedBigInteger('course_id');
            $table->foreign('course_id')->references('id')->on('course');
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
        Schema::dropIfExists('assistant');
    }
}
