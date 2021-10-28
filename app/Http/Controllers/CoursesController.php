<?php

namespace App\Http\Controllers;

use App\Helpers\GDrive;
use App\Models\Course;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
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
                ->join('sub_categories', 'sub_categories.id', '=', 'courses.sub_category_id')
                ->select(['courses.id AS id', 'sub_categories.name as name', 'courses.indonesia_text AS indonesia_text', 'courses.english_text AS english_text', 'courses.image AS image']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item" href="' . url('/admin/courses/' . $data->id . '/edit') . '"><li> <i class="ik ik-edit" style="color: green;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" href="#" data-toggle="modal"
                    data-target="#exampleModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: red;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
                    return $btn;
                })
                ->addColumn('image', function ($data) {
                    if ($data->image != null) {
                        $image = '<td> <a style="color:blue" href="' . asset('/images/' . $data->image) . '" target="_blank">Open Image</a></td>';
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
        $sub_categories = SubCategory::all();
        return view('admin.courses.add', compact('sub_categories'));
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

        $image = $request->file('image');
        $file = $image->getContent();
        $filename = $image->getClientOriginalName();
        $filename = Str::random(16) . $filename;
        Storage::disk('google')->put($filename, $file);
        $listContents = Storage::disk('google')->listContents();
        $drive = new GDrive();
        $id = $drive->getDrivePath($listContents, 'name', $filename);
        $table->image = "https://drive.google.com/uc?id=" . $id['path'] . "&export=media";

        $table->sub_category_id = $request->sub_category_id;
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
        $sub_categories = SubCategory::all();
        $data = Course::find($id);
        return view('admin.courses.edit', compact('data', 'sub_categories'));
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
        $table->indonesia_text = $request->indonesia_text;
        $table->english_text = $request->english_text;
        if (!empty($request->file('image'))) {
            $gdrive = new GDrive();
            $id_url = $gdrive->getIdFile($table->image);
            $delete_files = Storage::disk('google')->delete('16E_l0AY9RJyLN3NnuJrxl4SzCA4wVnVh/' . $id_url);
            if ($delete_files) {
                $image = $request->file('image');
                $file = $image->getContent();
                $filename = $image->getClientOriginalName();
                $filename = Str::random(16) . $filename;
                Storage::disk('google')->put($filename, $file);
                $listContents = Storage::disk('google')->listContents();
                $drive = new GDrive();
                $id = $drive->getDrivePath($listContents, 'name', $filename);
                $table->image = "https://drive.google.com/uc?id=" . $id['path'] . "&export=media";
            }
        } else {
            $table->image = $table->image;
        }
        $table->sub_category_id = $request->sub_category_id;
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
        $gdrive = new GDrive();
        $id_url = $gdrive->getIdFile($table->image);
        $delete_files = Storage::disk('google')->delete('16E_l0AY9RJyLN3NnuJrxl4SzCA4wVnVh/' . $id_url);
        if ($delete_files) {
            if ($table->delete()) {
                return redirect()->route('courses.index')
                    ->with('success', 'Courses deleted successfully.');
            }
        }
    }
}
