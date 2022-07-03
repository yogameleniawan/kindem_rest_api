<?php

use App\Events\OnlineUserNotification;
use App\Http\Controllers\APIController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\DashboardController;
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
    return view('landing');
})->name('landing');

Route::get('/register', function () {
    return redirect()->route('landing');
});
Route::middleware(['auth:sanctum', 'verified', 'can:admin'])->group(function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::post('chapter/import', [CategoriesController::class, 'import'])->name('materi.import');
    Route::get('chapter/template', [CategoriesController::class, 'template'])->name('materi.template');

    Route::post('sub_categories/import', [SubCategoriesController::class, 'import'])->name('sub_categories.import');
    Route::get('sub_categories/template', [SubCategoriesController::class, 'template'])->name('sub_categories.template');

    Route::post('courses/import', [CoursesController::class, 'import'])->name('courses.import');
    Route::get('courses/template', [CoursesController::class, 'template'])->name('courses.template');

    Route::resources([
        'materi' => CategoriesController::class,
        'courses' => CoursesController::class,
        'sub_categories' => SubCategoriesController::class,
        'users' => UsersController::class,
        'user_courses' => UserCoursesController::class,
        'user_details' => UserDetailsController::class,
    ]);
    Route::prefix('api')->group(function () {
        Route::get('getAllChapter', [APIController::class, 'getAllChapter'])->name('getAllChapter');
        Route::get('getAllMateri', [APIController::class, 'getAllMateri'])->name('getAllMateri');
        Route::post('getCategoryById', [APIController::class, 'getCategoryById'])->name('getCategoryById');
        Route::post('updateCategory', [APIController::class, 'updateCategory'])->name('updateCategory');
        Route::post('updateMateri', [APIController::class, 'updateMateri'])->name('updateMateri');
        Route::post('updateSoal', [APIController::class, 'updateSoal'])->name('updateSoal');
        Route::post('updateUser', [APIController::class, 'updateUser'])->name('updateUser');
        Route::get('getCardOnlineOfflineUser', [APIController::class, 'getCardOnlineOfflineUser'])->name('getCardOnlineOfflineUser');
        Route::get('getUserActivity', [APIController::class, 'getUserActivity'])->name('getUserActivity');
    });
    Route::get('userStatistic', [APIController::class, 'userStatistic'])->name('userStatistic');
    Route::get('chart', [APIController::class, 'chart'])->name('chart');
    Route::get('allChartData', [APIController::class, 'allChartData'])->name('allChartData');
});

Route::get('sendEmail', [APIController::class, 'sendEmail'])->name('sendEmail');

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

// Route::get('/broadcast', function () {
//     return view('broadcast');
// });

// Route::get('/send-broadcast', function () {
//     OnlineUserNotification::dispatch('Parameter pesan');
//     // event(new OnlineUserNotification());
//     echo 'test broadcast event';
// });
