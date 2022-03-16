<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserTutorialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_tutorials', function (Blueprint $table) {
            $table->char('id', 10)->primary();
            $table->string('page');
            $table->string('is_done')->default(false);
            $table->bigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('RESTRICT')->onUpdate('CASCADE');
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
        Schema::dropIfExists('user_tutorials');
    }
}
