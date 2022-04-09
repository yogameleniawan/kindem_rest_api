<?php

use App\Http\Controllers\APIController;
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
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('dashboard', function () {
        return view('admin.dashboard.index');
    })->name('dashboard');
    Route::prefix('admin')->group(function () {
        Route::resources([
            'materi' => CategoriesController::class,
            'courses' => CoursesController::class,
            'sub_categories' => SubCategoriesController::class,
            'users' => UsersController::class,
            'user_courses' => UserCoursesController::class,
            'user_details' => UserDetailsController::class,
        ]);
    });
    Route::prefix('api')->group(function () {
        Route::get('getAllChapter', [APIController::class, 'getAllChapter'])->name('getAllChapter');
        Route::get('getAllMateri', [APIController::class, 'getAllMateri'])->name('getAllMateri');
        Route::post('getCategoryById', [APIController::class, 'getCategoryById'])->name('getCategoryById');
        Route::post('updateCategory', [APIController::class, 'updateCategory'])->name('updateCategory');
        Route::post('updateMateri', [APIController::class, 'updateMateri'])->name('updateMateri');
        Route::post('updateSoal', [APIController::class, 'updateSoal'])->name('updateSoal');
    });
});


// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');
