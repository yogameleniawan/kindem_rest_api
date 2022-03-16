<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function getAllCategories()
    {
        $data = Category::orderBy('level', 'asc');
        return CategoryResource::collection($data);
    }
}
