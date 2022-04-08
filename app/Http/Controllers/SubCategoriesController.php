<?php

namespace App\Http\Controllers;

use App\Helpers\GDrive;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class SubCategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('sub_categories')
                ->join('categories', 'categories.id', '=', 'sub_categories.category_id')
                ->select(['sub_categories.id AS id', 'categories.name AS category_name', 'categories.id AS category_id', 'sub_categories.name AS name', 'sub_categories.image AS image']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item edit-table" onclick="editMateriPage(`' . $data->id . '`,`' . $data->category_id . '`,`' . $data->name . '`)"><li> <i class="ik ik-edit" style="color: white;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" onclick="deleteMateriPage(`' . $data->id .  '`,`' . $data->name . '`)" data-toggle="modal"
                    data-target="#exampleModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: white;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.sub_categories.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.sub_categories.add', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $table = new SubCategory();
        $table->id = Str::random(10);
        $table->name = $request->name;
        $table->category_id = $request->category_id;
        if ($table->save()) {
            return redirect()->route('sub_categories.index')
                ->with('success', 'Sub Category created successfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function show(SubCategory $subCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = SubCategory::find($id);
        $categories = Category::all();
        return view('admin.sub_categories.edit', compact('data', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $table = SubCategory::find($request->id_materi_edit);
        $table->name = $request->name;
        $table->category_id = $request->category_id;

        if ($table->save()) {
            return response()->json(['data' => $table], 200);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $table = SubCategory::find($request->id);
        if ($table->delete()) {
            return response()->json(['data' => $table], 200);
        }
    }
}
