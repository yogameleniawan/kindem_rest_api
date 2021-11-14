<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class UserCourseController extends Controller
{
    public function storeAnswer(Request $request)
    {
        $table = new UserCourse();
        $table->id = Str::random(10);
        $table->answer = $request->answer;
        $table->checked = true;
        if ($request->course_text == $request->answer) {
            $table->is_true = true;
        } else {
            $table->is_true = false;
        }
        $table->course_id = $request->course_id;
        $table->user_id = $request->user_id;
        if ($table->save()) {
            return response()->json([
                'success' => true,
            ], 200);
        }
    }
}
