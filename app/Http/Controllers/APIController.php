<?php

namespace App\Http\Controllers;

use App\Helpers\GDrive;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class APIController extends Controller
{
    public function getAllChapter()
    {
        $data = Category::orderBy('level', 'asc')->get();
        return response()->json(['data' => $data], 200);
    }

    public function getCategoryById(Request $request)
    {
        $data = Category::find($request->id);
        return response()->json(['data' => $data], 200);
    }

    public function updateCategory(Request $request)
    {
        $table = Category::find($request->category_id);
        $table->name = $request->name;
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
        $table->level = $table->level;
        if ($table->save()) {
            return response()->json($table, 200);
            // return redirect()->route('categories.index')
            //     ->with('success', 'Category created successfully.');
        }
    }

    public function updateMateri(Request $request)
    {
        $table = SubCategory::find($request->id_materi_edit);
        $table->name = $request->name;
        $table->category_id = $request->category_id;

        if ($table->save()) {
            return response()->json(['data' => $table], 200);
        }
    }
}
