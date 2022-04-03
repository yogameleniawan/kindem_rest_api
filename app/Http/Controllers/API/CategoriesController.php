<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Models\CompleteCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CategoriesController extends Controller
{
    public function getAllCategories()
    {
        $data = Category::orderBy('level', 'asc')->get();

        foreach ($data as $d) {
            $available_data = CompleteCategory::where('user_id', Auth::user()->id)
                ->where('category_id', '=', $d->id)->count();
            if ($available_data == 0) {
                $complete_category = new CompleteCategory();
                $complete_category->id = Str::random(10);
                $complete_category->category_id = $d->id;
                $complete_category->user_id = Auth::user()->id;
                $complete_category->is_complete = false;
                $complete_category->save();
            }
        }

        $category = DB::table('categories')
            ->leftJoin('complete_categories', 'complete_categories.category_id', '=', 'categories.id')
            ->selectRaw('categories.id as id, categories.name as name, categories.image as image, categories.level as level, complete_categories.is_complete as is_complete')
            ->orderBy('categories.level', 'asc')
            ->get();
        return response()->json(['data' => $category], 200);
    }
}
