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
        $levels = Level::orderBy('point', 'desc')->get();

        $categories = Category::orderBy('level', 'asc')->get();

        $topRank = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point')
            ->groupBy('users.id')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->get()
            ->take(10);
        return view('admin.dashboard.index', compact('levels', 'countUser', 'countChapter', 'countMateri', 'countSoal', 'categories', 'topRank'));
    }
}
