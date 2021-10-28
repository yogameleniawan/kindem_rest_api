<?php

namespace App\Http\Controllers;

use App\Helpers\GDrive;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('categories')
                ->select(['categories.id AS id', 'categories.name AS name', 'categories.image AS image']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item" href="' . url('/admin/categories/' . $data->id . '/edit') . '"><li> <i class="ik ik-edit" style="color: green;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" href="#" data-toggle="modal"
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
        return view('admin.categories.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.categories.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $table = new Category();
        $table->id = Str::random(10);
        $table->name = $request->name;
        $image = $request->file('image');
        $file = $image->getContent();
        $filename = $image->getClientOriginalName();
        $filename = Str::random(16) . $filename;
        Storage::disk('google')->put($filename, $file);
        $listContents = Storage::disk('google')->listContents();
        $drive = new GDrive();
        $id = $drive->getDrivePath($listContents, 'name', $filename);
        $table->image = "https://drive.google.com/uc?id=" . $id['path'] . "&export=media";

        if ($table->save()) {
            return redirect()->route('categories.index')
                ->with('success', 'Category created successfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Category::find($id);
        return view('admin.categories.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $table = Category::find($id);
        $table->name = $request->name;
        $image = $request->file('image');
        $file = $image->getContent();
        $filename = $image->getClientOriginalName();
        $filename = Str::random(16) . $filename;
        Storage::disk('google')->put($filename, $file);
        $listContents = Storage::disk('google')->listContents();
        $drive = new GDrive();
        $id = $drive->getDrivePath($listContents, 'name', $filename);
        $table->image = "https://drive.google.com/uc?id=" . $id['path'] . "&export=media";

        if ($table->save()) {
            return redirect()->route('categories.index')
                ->with('success', 'Category created successfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $table = Category::find($request->id);
        $gdrive = new GDrive();
        $id_url = $gdrive->getIdFile($table->image);
        $delete_files = Storage::disk('google')->delete('16E_l0AY9RJyLN3NnuJrxl4SzCA4wVnVh/' . $id_url);
        if ($delete_files) {
            if ($table->delete()) {
                return redirect()->route('categories.index')
                    ->with('success', 'Category deleted successfully.');
            }
        }
    }
}
