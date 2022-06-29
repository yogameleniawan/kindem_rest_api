<?php

namespace App\Http\Controllers;

use App\Helpers\GDrive;
use App\Imports\CourseImport;
use App\Models\Course;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
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
                ->select(['courses.id AS id', 'sub_categories.id as sub_category_id', 'sub_categories.name as name', 'courses.indonesia_text AS indonesia_text', 'courses.english_text AS english_text', 'courses.image AS image', 'courses.image_course AS image_course', 'courses.is_voice AS is_voice']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item edit-table" onclick="editCoursePage(`' . $data->id . '`,`' . $data->sub_category_id . '`,`' . $data->indonesia_text . '`,`' . $data->english_text . '`,`' . $data->image . '`,`' . $data->image_course . '`,`' . $data->is_voice . '`)" data-toggle="modal" data-target="#demoModal"><li> <i class="ik ik-edit" style="color: white;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" onclick="deleteCoursePage(`' . $data->id . '`,`' . $data->sub_category_id . '`,`' . $data->indonesia_text . '`,`' . $data->english_text . '`,`' . $data->image . '`,`' . $data->image_course . '`,`' . $data->is_voice . '`)" data-toggle="modal"
                    data-target="#demoModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: white;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
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
                ->addColumn('image_course', function ($data) {
                    if ($data->image_course != null) {
                        $image_course = '<td> <a style="color:blue" href="' . $data->image_course . '" target="_blank">Open Image</a></td>';
                    } else {
                        $image_course = '<td></td>';
                    }

                    return $image_course;
                })
                ->rawColumns(['action', 'image', 'image_course'])
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

        if ($request->file('image_course')) {
            $image_course = $request->file('image_course');
            $file_image_course = $image_course->getContent();
            $filename_image_course = $image_course->getClientOriginalName();
            $filename_image_course = Str::random(16) . $filename_image_course;
            Storage::disk('google')->put($filename_image_course, $file_image_course);
            $listContents_image_course = Storage::disk('google')->listContents();
            $drive_image_course = new GDrive();
            $id_image_course = $drive_image_course->getDrivePath($listContents_image_course, 'name', $filename_image_course);
            $table->image_course = "https://drive.google.com/uc?id=" . $id_image_course['path'] . "&export=media";
        }
        if ($request->is_voice == 'true') {
            $table->is_voice = true;
        } else {
            $table->is_voice = false;
        }
        $table->sub_category_id = $request->sub_category_id;
        if ($table->save()) {
            return response()->json(['data' => $table], 200);
        }
    }
    public function template()
    {
        return response()->download(public_path('pipeline/pipeline soal.xlsx'));
    }
    public function import(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|mimes:csv,xls,xlsx'
        ]);

        Excel::import(new CourseImport, request()->file('file'));

        return redirect()->route('materi.index')->with('success', 'Materi berhasil diimport.');
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
        $table->sub_category_id = $request->sub_category_id;
        if (!empty($request->image)) {
            $image = $request->file('image');
            $file = $image->getContent();
            $filename = $image->getClientOriginalName();
            $filename = Str::random(16) . $filename;
            Storage::disk('google')->put($filename, $file);
            $listContents = Storage::disk('google')->listContents();
            $drive = new GDrive();
            $id = $drive->getDrivePath($listContents, 'name', $filename);
            $table->image = "https://drive.google.com/uc?id=" . $id['path'] . "&export=media";
        } else {
            $table->image = $table->image;
        }
        if ($request->file('image_course')) {
            $image_course = $request->file('image_course');
            $file_image_course = $image_course->getContent();
            $filename_image_course = $image_course->getClientOriginalName();
            $filename_image_course = Str::random(16) . $filename_image_course;
            Storage::disk('google')->put($filename_image_course, $file_image_course);
            $listContents_image_course = Storage::disk('google')->listContents();
            $drive_image_course = new GDrive();
            $id_image_course = $drive_image_course->getDrivePath($listContents_image_course, 'name', $filename_image_course);
            $table->image_course = "https://drive.google.com/uc?id=" . $id_image_course['path'] . "&export=media";
        } else {
            $table->image_course = $table->image_course;
        }
        if ($request->is_voice == 'true') {
            $table->is_voice = true;
        } else {
            $table->is_voice = false;
        }
        if ($table->save()) {
            return response()->json(['data' => $table], 200);
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
        $id_url_course = $gdrive->getIdFile($table->image_course);
        $delete_files = Storage::disk('google')->delete('16E_l0AY9RJyLN3NnuJrxl4SzCA4wVnVh/' . $id_url);
        $delete_files_course = Storage::disk('google')->delete('16E_l0AY9RJyLN3NnuJrxl4SzCA4wVnVh/' . $id_url_course);
        if ($delete_files || $delete_files_course) {
            if ($table->delete()) {
                return response()->json(['data' => $table], 200);
            }
        }
    }
}
