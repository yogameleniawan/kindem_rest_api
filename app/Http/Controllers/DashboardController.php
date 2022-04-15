<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\CompleteCategory;
use App\Models\Level;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $countUser = DB::table('users')->where('role', 'student')->count();
        $countChapter = DB::table('categories')->count();
        $countMateri = DB::table('sub_categories')->count();
        $countSoal = DB::table('courses')->count();
        $levels = Level::all();

        $categories = Category::all();
        // $completeMateri = DB::table('complete_categories')
        //     ->where('is_complete', true)
        //     ->distinct()->get(['category_id']);
        // dd($completeMateri);

        return view('admin.dashboard.index', compact('levels', 'countUser', 'countChapter', 'countMateri', 'countSoal', 'categories'));
    }
}
