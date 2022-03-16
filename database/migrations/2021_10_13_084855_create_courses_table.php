<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->char('id', 10)->primary();
            $table->string('indonesia_text');
            $table->string('english_text');
            $table->string('image');
            $table->char('sub_category_id', 10);
            $table->boolean('is_voice')->default('true');
            $table->foreign('sub_category_id')->references('id')->on('sub_categories')->onDelete('RESTRICT')->onUpdate('CASCADE');
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
        Schema::dropIfExists('courses');
    }
}
