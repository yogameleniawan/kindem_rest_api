<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UserCourseController extends Controller
{
    public function storeAnswer(Request $request)
    {
        $table = new UserCourse();
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
        $table->user_id = $request->user_id;
        if ($table->save()) {
            return response()->json([
                'success' => true,
            ], 200);
        }
    }

    public function getScore(Request $request)
    {
        $is_true = DB::table('users_courses')
            ->where('user_id', '=', $request->user_id)
            ->where('is_true', '=', true)
            ->where('sub_category_id', '=', $request->sub_category_id)->count();
        $total_test = DB::table('users_courses')
            ->where('user_id', '=', $request->user_id)
            ->where('sub_category_id', '=', $request->sub_category_id)->count();

        return response()->json([
            'is_true' => $is_true,
            'total_test' => $total_test,
            'success' => true,
        ], 200);
    }
}
