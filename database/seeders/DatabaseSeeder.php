<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(30)->create();
        \App\Models\UserLevel::factory(30)->create();
        \App\Models\UserCourse::factory(150)->create();
    }
}
