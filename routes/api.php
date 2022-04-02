<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CategoriesController;
use App\Http\Controllers\API\CoursesController;
use App\Http\Controllers\API\ScoreController;
use App\Http\Controllers\API\SubCategoriesController;
use App\Http\Controllers\API\UserCourseController;
use App\Http\Controllers\API\UsersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);

Route::post('/login', [App\Http\Controllers\API\AuthController::class, 'login']);
Route::post('/requestToken', [AuthController::class, 'requestToken']);

Route::prefix('v1')->group(function () {

    Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::get('/user', function (Request $request) {
            return $request->user();
        });
        Route::get('/getAllUsers', [UsersController::class, 'getAllUsers']);
        Route::post('/updateProfile', [UsersController::class, 'updateProfile']);
        Route::get('/getAllCategories', [CategoriesController::class, 'getAllCategories']);
        Route::get('/getAllSubCategories', [SubCategoriesController::class, 'getAllSubCategories']);
        Route::get('/getSubCategoriesById/{id}', [SubCategoriesController::class, 'getSubCategoriesById']);
        Route::get('/getAllCourses', [CoursesController::class, 'getAllCourses']);
        Route::get('/getCoursesById/{id}', [CoursesController::class, 'getCoursesById']);
        Route::post('/getAnswerChoices', [CoursesController::class, 'getAnswerChoices']);
        Route::post('/redirectCourse', [CoursesController::class, 'redirectCourse']);
        Route::post('/storeAnswer', [UserCourseController::class, 'storeAnswer']);
        Route::get('/getScore', [UserCourseController::class, 'getScore']);
        Route::get('/reloadTest', [UserCourseController::class, 'reloadTest']);
        Route::get('/getTest', [UserCourseController::class, 'getTest']);
        Route::get('/getFinishCourses', [UserCourseController::class, 'getFinishCourses']);
        Route::get('/getIncompleteCourses', [UserCourseController::class, 'getIncompleteCourses']);
        Route::get('/getAllScore', [ScoreController::class, 'getAllScore']);
        Route::post('/logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
    });
});
