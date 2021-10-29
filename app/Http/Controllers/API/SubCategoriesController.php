<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\SubCategoryResource;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoriesController extends Controller
{
    public function getAllSubCategories()
    {
        $data = SubCategory::all();
        return SubCategoryResource::collection($data);
    }
}
