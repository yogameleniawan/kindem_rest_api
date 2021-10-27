<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\User;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class UserCoursesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('users_courses')
                ->leftJoin('users', 'users.id', '=', 'users_courses.user_id')
                ->leftJoin('courses', 'courses.id', '=', 'users_courses.course_id')
                ->select(['users_courses.id AS id', 'users.email AS email', 'courses.english_text AS english_text', 'users_courses.answer AS answer']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item" href="' . url('/admin/categories/' . $data->id . '/edit') . '"><li> <i class="ik ik-edit" style="color: green;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" href="#" data-toggle="modal"
                    data-target="#exampleModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: red;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.user_courses.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        $courses = Course::all();
        return view('admin.user_courses.add', compact('users', 'courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $table = new UserCourse();
        $table->id = Str::random(10);
        $table->answer = $request->answer;
        $table->checked = $request->checked;
        $table->is_true = $request->is_true;
        $table->course_id = $request->course_id;
        $table->user_id = $request->user_id;
        if ($table->save()) {
            return redirect()->route('user_courses.index')
                ->with('success', 'User created successfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserCourse  $userCourse
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserCourse  $userCourse
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = UserCourse::find($id);
        $users = User::all();
        $courses = Course::all();
        return view('admin.user_courses.edit', compact('data', 'users', 'courses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserCourse  $userCourse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $table = UserCourse::find($id);
        $table->answer = $request->answer;
        $table->checked = $request->checked;
        $table->is_true = $request->is_true;
        $table->course_id = $request->course_id;
        $table->user_id = $request->user_id;
        if ($table->save()) {
            return redirect()->route('user_courses.index')
                ->with('success', 'User created successfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserDetail  $userDetail
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $table = UserCourse::find($request->id);

        if ($table->delete()) {
            return redirect()->route('user_courses.index')
                ->with('success', 'User deleted successfully.');
        }
    }
}
