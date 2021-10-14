<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\SubCategoriesController;
use App\Http\Controllers\UserCoursesController;
use App\Http\Controllers\UserDetailsController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('admin')->group(function () {
    Route::resources([
        'categories' => CategoriesController::class,
        'courses' => CoursesController::class,
        'sub_categories' => SubCategoriesController::class,
        'users' => UsersController::class,
        'user_courses' => UserCoursesController::class,
        'user_details' => UserDetailsController::class,
    ]);
});
