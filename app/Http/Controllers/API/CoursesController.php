<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CoursesController extends Controller
{
    public function getAllCourses()
    {
        $data = Course::all();
        return CourseResource::collection($data);
    }

    public function getCoursesById($id)
    {
        $courses = DB::table('user_courses')
            ->leftJoin('courses', 'user_courses.course_id', '=', 'courses.id')
            ->select(
                'courses.id as id',
                'courses.indonesia_text as indonesia_text',
                'courses.english_text as english_text',
                'courses.image as image',
                'courses.image_course as image_course',
                'courses.sub_category_id as sub_category_id',
                'courses.is_voice as is_voice',
                'courses.created_at as created_at',
                'courses.updated_at as updated_at')
            ->where('courses.sub_category_id', '=', $id)
            ->inRandomOrder()
            ->take(10)
            ->get();
        return response()->json(['data' => $courses], 200,[],JSON_NUMERIC_CHECK);
        // return CourseResource::collection($data);
    }

    public function getAnswerChoices(Request $request)
    {
        $true_answer = Course::find($request->id);
        $random_answer = Course::where('sub_category_id', $request->sub_category_id)
            ->inRandomOrder()
            ->where('id', '!=', $request->id)
            ->limit(3)
            ->select('english_text')
            ->get();

        $random_answer[2]->english_text = $true_answer->english_text;

        return CourseResource::collection($random_answer)->shuffle();
    }

    public function redirectCourse(Request $request)
    {
        $courses = DB::table('user_courses')
            ->leftJoin('courses', 'user_courses.course_id', '=', 'courses.id')
            ->select(
                'courses.id as id',
                'courses.indonesia_text as indonesia_text',
                'courses.english_text as english_text',
                'courses.image as image',
                'courses.image_course as image_course',
                'courses.sub_category_id as sub_category_id',
                'courses.is_voice as is_voice',
                'courses.created_at as created_at',
                'courses.updated_at as updated_at')
            ->where('checked', false)
            ->where('user_id', Auth::user()->id)
            ->where('courses.sub_category_id', $request->sub_category_id)
            ->inRandomOrder()
            ->get();

        $courses_total = UserCourse::where('sub_category_id', $request->sub_category_id)
            ->where('user_id', Auth::user()->id)
            ->count();

        $course_answer_total = UserCourse::where('sub_category_id', $request->sub_category_id)
            ->where('checked', true)
            ->where('user_id', Auth::user()->id)
            ->count();

        return response()->json([
            'data' => $courses,
            'courses_total' => $courses_total,
            'course_answer_total' => $course_answer_total
        ], 200,[],JSON_NUMERIC_CHECK);
    }
}
