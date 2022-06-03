<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\SubCategoryResource;
use App\Models\Course;
use App\Models\SubCategory;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SubCategoriesController extends Controller
{
    public function getAllSubCategories()
    {
        $data = SubCategory::all();
        return response()->json(['data' => $data], 200 ,[],JSON_NUMERIC_CHECK);
    }

    public function getSubCategoriesById($id)
    {
        $sub_categories = SubCategory::where('category_id', $id)->get();
        foreach ($sub_categories as $s) {
            $courses = Course::where('sub_category_id', '=', $s->id)->inRandomOrder()->take(10)->get();

            $available_course = UserCourse::where('sub_category_id', '=', $s->id)->where('user_id', Auth::user()->id)->first();
            if ($available_course == null) {
                foreach ($courses as $d) {
                    $table = new UserCourse();
                    $table->id = Str::random(10);
                    $table->answer = '';
                    $table->checked = false;
                    $table->is_true = false;
                    $table->course_id = $d->id;
                    $table->sub_category_id = $s->id;
                    $table->user_id = Auth::user()->id;
                    $table->save();
                }
            }
        }
        $data = DB::table('user_courses')
            ->leftJoin('sub_categories', 'user_courses.sub_category_id', '=', 'sub_categories.id')
            ->leftJoin('categories', 'sub_categories.category_id', '=', 'categories.id')
            ->selectRaw("sub_categories.id as id,categories.id as category_id, categories.name as category_name, categories.image as category_image, sub_categories.name as name, sub_category_id, count(checked or null) as complete, count(checked) as total, sub_categories.image as image")
            ->where('user_id', Auth::user()->id)
            ->where('category_id', $id)
            ->groupBy('sub_category_id')
            ->get();
        return response()->json(['data' => $data], 200 ,[],JSON_NUMERIC_CHECK);
    }
}
