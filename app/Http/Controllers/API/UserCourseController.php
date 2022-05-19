<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\APIResource;
use App\Models\Category;
use App\Models\CompleteCategory;
use App\Models\Course;
use App\Models\Level;
use App\Models\Score;
use App\Models\SubCategory;
use App\Models\UserCourse;
use App\Models\UserLevel;
use App\Models\UserSession;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UserCourseController extends Controller
{
    public function storeAnswer(Request $request)
    {
        $table = UserCourse::where('course_id', $request->course_id)->first();
        $table->id = Str::random(10);
        $table->answer = $request->answer;
        $table->checked = true;
        if (Str::lower($request->course_text) == Str::lower($request->answer)) {
            $table->is_true = true;
        } else {
            $table->is_true = false;
        }
        $table->course_id = $request->course_id;
        $table->sub_category_id = $request->sub_category_id;
        $table->user_id = Auth::user()->id;
        if ($table->save()) {
            return response()->json([
                'success' => true,
            ], 200);
        }
    }

    public function getScore(Request $request)
    {
        $is_true = DB::table('user_courses')
            ->where('user_id', '=', Auth::user()->id)
            ->where('is_true', '=', true)
            ->where('sub_category_id', '=', $request->sub_category_id)->count();
        $total_test = DB::table('user_courses')
            ->where('user_id', '=', Auth::user()->id)
            ->where('sub_category_id', '=', $request->sub_category_id)->count();

        // Count Total Point User
        $total_point = DB::table('user_courses')
            ->where('user_id', '=', Auth::user()->id)
            ->where('is_true', '=', true)->count();

        $point = UserLevel::where('user_id', Auth::user()->id)->first();
        $point->user_point = $total_point;
        $point->save();
        // Count Total Point User

        $sub = SubCategory::find($request->sub_category_id);
        $category = Category::find($sub->category_id);

        $total_sub = SubCategory::where('category_id', $category->id)->count();
        $data_sub = SubCategory::where('category_id', $category->id)->get();

        $total_complete = 0;

        foreach ($data_sub as $ds) {
            $course_checked = UserCourse::where('user_id', Auth::user()->id)
                ->where('sub_category_id', '=', $ds->id)
                ->where('checked', true)
                ->count();
            $total_course = UserCourse::where('user_id', Auth::user()->id)
                ->where('sub_category_id', '=', $ds->id)
                ->count();
            if ($total_course == $course_checked) {
                $total_complete++;
            }
        }

        if ($total_complete == $total_sub) { // check total soal yang dikerjakan == total soal yang disediakan
            $table = CompleteCategory::where('category_id', $sub->category_id)->first();
            $table->is_complete = true; // maka materi sudah dikerjakan
            $table->save();
        }

        $user_level = UserLevel::leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->where('user_id', Auth::user()->id)->first();

        $total_score = UserCourse::where('user_id', Auth::user()->id)->where('is_true', true)->count();
        $next_level = Level::where('point', '>', $user_level->point)
            ->orderBy('point', 'asc')
            ->first();
        $level_up = false;
        if ($next_level != null) {
            if ($total_score > $next_level->point) {
                $level_up = true;
                $level = UserLevel::where('user_id', Auth::user()->id)->first();
                $level->level_id = $next_level->id;
                $level->save();
            }
        }
        return response()->json([
            'user_level' => $user_level->name,
            'next_level' => $next_level != null ? $next_level->name : 'MAX',
            'next_point_level' => $next_level != null ? $next_level->point : 'MAX',
            'total_score' => $total_score,
            'is_true' => $is_true,
            'total_test' => $total_test,
            'level_up' => $level_up,
            'success' => true,
        ], 200);
    }

    public function reloadTest(Request $request)
    {
        $table = UserCourse::where('sub_category_id', '=', $request->sub_category_id)
            ->where('user_id', '=', Auth::user()->id)
            ->delete();

        $courses = Course::where('sub_category_id', '=', $request->sub_category_id)->inRandomOrder()->take(10)->get();

        $available_course = UserCourse::where('sub_category_id', '=', $request->sub_category_id)->where('user_id', '=', Auth::user()->id)->first();
        if ($available_course == null) {
            foreach ($courses as $d) {
                $table = new UserCourse();
                $table->id = Str::random(10);
                $table->answer = '';
                $table->checked = false;
                $table->is_true = false;
                $table->course_id = $d->id;
                $table->sub_category_id = $request->sub_category_id;
                $table->user_id = Auth::user()->id;
                $table->save();
            }
        }
        if ($table) {
            return response()->json([
                'status' => true,
            ], 200);
        }
    }

    public function getTest(Request $request)
    {
        $total_test = DB::table('user_courses')
            ->where('user_id', '=', Auth::user()->id)
            ->where('sub_category_id', '=', $request->sub_category_id)->count();
        if ($total_test) {
            return response()->json([
                'complete' => true,
            ], 200);
        } else {
            return response()->json([
                'complete' => false,
            ], 200);
        }
    }

    public function getFinishCourses()
    {
        $data = CompleteCategory::where('user_id', Auth::user()->id)->get();
        return response()->json(['data' => $data]);
    }

    public function getIncompleteCourses()
    {
        $data = DB::table('user_courses')
            ->leftJoin('sub_categories', 'user_courses.sub_category_id', '=', 'sub_categories.id')
            ->leftJoin('categories', 'sub_categories.category_id', '=', 'categories.id')
            ->selectRaw("user_courses.id as id, categories.name as category_name, categories.image as category_image, sub_categories.name as sub_name, sub_category_id, count(checked or null) as complete, count(checked) as total, sub_categories.image as sub_image")
            ->where('user_id', Auth::user()->id)
            ->havingRaw('count(checked or null) < count(checked)')
            ->havingRaw('count(checked or null) > 0')
            ->groupBy('sub_category_id')
            ->get();
        return response()->json(['data' => $data]);
    }

    public function checkIncompleteCourse(Request $request)
    {
        $data = DB::table('user_courses')
            ->leftJoin('sub_categories', 'user_courses.sub_category_id', '=', 'sub_categories.id')
            ->leftJoin('categories', 'sub_categories.category_id', '=', 'categories.id')
            ->selectRaw("user_courses.id as id, categories.name as category_name, categories.image as category_image, sub_categories.name as sub_name, sub_category_id, count(checked or null) as complete, count(checked) as total, sub_categories.image as sub_image")
            ->where('user_id', Auth::user()->id)
            ->where('sub_category_id', $request->sub_category_id)
            ->groupBy('sub_category_id')
            ->get();
        return response()->json(['data' => $data]);
    }
}
