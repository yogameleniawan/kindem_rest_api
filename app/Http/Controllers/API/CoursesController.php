<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use Illuminate\Http\Request;

class CoursesController extends Controller
{
    public function getAllCourses()
    {
        $data = Course::all();
        return CourseResource::collection($data);
    }
}
