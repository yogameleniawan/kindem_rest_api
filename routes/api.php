<?php

use App\Http\Controllers\API\CategoriesController;
use App\Http\Controllers\API\CoursesController;
use App\Http\Controllers\API\SubCategoriesController;
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
Route::get('/getAllCategories', [CategoriesController::class, 'getAllCategories']);
Route::get('/getAllSubCategories', [SubCategoriesController::class, 'getAllSubCategories']);
Route::get('/getSubCategoriesById/{id}', [SubCategoriesController::class, 'getSubCategoriesById']);
Route::get('/getAllCourses', [CoursesController::class, 'getAllCourses']);
Route::get('/getCoursesById/{id}', [CoursesController::class, 'getCoursesById']);

Route::prefix('v1')->group(function () {

    Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::get('/user', function (Request $request) {
            return $request->user();
        });

        Route::post('/logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
    });
});
