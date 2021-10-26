<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class CoursesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('courses')
                ->select(['courses.id AS id', 'courses.indonesia_text AS indonesia_text', 'courses.english_text AS english_text', 'courses.image AS image']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item" href="' . url('/admin/courses/' . $data->id . '/edit') . '"><li> <i class="ik ik-edit" style="color: green;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" href="#" data-toggle="modal"
                    data-target="#exampleModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: red;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
                    return $btn;
                })
                ->addColumn('image', function ($data) {
                    if ($data->image != null) {
                        $image = '<td> <a style="color:blue" href="' . $data->image . '" target="_blank">Open Image</a></td>';
                    } else {
                        $image = '<td></td>';
                    }

                    return $image;
                })
                ->rawColumns(['action', 'image'])
                ->make(true);
        }
        return view('admin.courses.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.courses.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $table = new Course();
        $table->id = Str::random(10);
        $table->indonesia_text = $request->indonesia_text;
        $table->english_text = $request->english_text;
        $table->image = $request->image;
        if ($table->save()) {
            return redirect()->route('courses.index')
                ->with('success', 'Courses created successfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function show(Course $course)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Course::find($id);
        return view('admin.courses.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $table = Course::find($id);
        $table->id = Str::random(10);
        $table->indonesia_text = $request->indonesia_text;
        $table->english_text = $request->english_text;
        $table->image = $request->image;
        if ($table->save()) {
            return redirect()->route('courses.index')
                ->with('success', 'Courses created successfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $table = Course::find($request->id);

        if ($table->delete()) {
            return redirect()->route('courses.index')
                ->with('success', 'Courses deleted successfully.');
        }
    }
}
