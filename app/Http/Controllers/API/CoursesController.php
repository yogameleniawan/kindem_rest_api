<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
        $data = Course::where('sub_category_id', '=', $id)->inRandomOrder()->get();

        foreach ($data as $d) {
            $table = new UserCourse();
            $table->id = Str::random(10);
            $table->answer = '';
            $table->checked = false;
            $table->is_true = false;
            $table->course_id = $d->id;
            $table->sub_category_id = $id;
            $table->user_id = Auth::user()->id;
            $table->save();
        }
        return CourseResource::collection($data);
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
}
