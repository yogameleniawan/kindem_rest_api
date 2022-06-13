<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use App\Models\UserSession;
use App\Models\UserTutorial;
use App\Models\UserCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    public function getUser()
    {
        $data = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point', 'user_levels.user_point as user_point')
            ->groupBy('users.id')
            ->orderBy('levels.point', 'DESC')
            ->orderBy('user_levels.user_point', 'DESC')
            ->orderBy('user_levels.updated_at', 'DESC')
            ->where('users.role', 'student')
            ->get();
        $current_position = 1;
        $current = false;
        foreach ($data as $d) {
            if ($d->id == Auth::user()->id) {
                $current_position = $current_position;
                $current = true;
            } else {
                if ($current == false) {
                    $current_position++;
                }
            }
        }
        $user = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->where('users.id', Auth::user()->id)->first();
        
        $user_point = UserCourse::where('user_id', Auth::user()->id)
            ->where('is_true', true)
            ->count();
            
        $materi_complete = UserCourse::leftJoin('sub_categories', 'user_courses.sub_category_id', '=', 'sub_categories.id')
            ->select('user_courses.sub_category_id as sub_category_id', 'user_courses.checked as checked', 'user_courses.user_id as user_id', 'user_courses.is_true as is_true')
            ->where('user_id', Auth::user()->id)
            ->where('checked', true)
            ->groupBy('sub_category_id')
            ->get()
            ->count();
            
        return response()->json(['id' => $user->id,'name' => $user->name,'email' => $user->email,'profile_photo_path' => $user->profile_photo_path,'level' => $user->level,'ranking' => $current_position,'complete_sub_category' => $materi_complete,'point' => $user_point], 200,[],JSON_NUMERIC_CHECK);
    }
    
    public function getAllUsers()
    {
        $data = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point')
            ->groupBy('users.id')
            ->where('users.role', 'student')
            ->where('users.id','!=', Auth::user()->id)
            ->get();
        return response()->json(['data' => $data], 200 ,[],JSON_NUMERIC_CHECK);
    }

    public function getRankingUsers()
    {
        $datas = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point', 'user_levels.user_point as user_point')
            ->groupBy('users.id')
            ->orderBy('levels.point', 'DESC')
            ->orderBy('user_levels.user_point', 'DESC')
            ->orderBy('user_levels.updated_at', 'DESC')
            ->where('users.role', 'student')
            ->get()
            ->take(10);
        return response()->json(['data' => $datas], 200 ,[],JSON_NUMERIC_CHECK);
    }

    public function updateProfile(Request $request)
    {
        $data = $request->all();
        $user = User::find($request->user()->id);
        if ($request->password) {
            $newPassword = Hash::make($request->password);
            $user->update([
                'password' => $newPassword
            ]);
            return response()
                ->json(['status' => 'true', 'message' => "Password updated", 'data' => $newPassword]);
        } else {
            $user->update($data);
            return response()
                ->json(['status' => 'true', 'message' => "Profile updated", 'data' => $user], 200 ,[],JSON_NUMERIC_CHECK);
        }
    }

    public function tutorialCheck(Request $request)
    {
        $data = UserTutorial::where('page', $request->page)->where('user_id', Auth::user()->id)->count();

        if ($data > 0) {
            return response()->json(['is_done' => true], 200 ,[],JSON_NUMERIC_CHECK);
        } else {
            $tutorial = new UserTutorial();
            $tutorial->id = Str::random(10);
            $tutorial->page = $request->page;
            $tutorial->user_id = Auth::user()->id;
            $tutorial->is_done = true;
            $tutorial->save();
            return response()->json(['is_done' => false], 200 ,[],JSON_NUMERIC_CHECK);
        }
    }

    public function addSession()
    {
        $user_session = new UserSession();
        $user_session->id = Str::random(10);
        $user_session->user_id = Auth::user()->id;
        $user_session->save();

        return response()->json(['data' => $user_session], 200 ,[],JSON_NUMERIC_CHECK);
    }
    
    public function getDetailUser(Request $request)
    {
        $data = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point', 'user_levels.user_point as user_point')
            ->groupBy('users.id')
            ->orderBy('user_levels.updated_at', 'DESC')
            ->orderBy('levels.point', 'DESC')
            ->orderBy('user_levels.user_point', 'DESC')
            ->where('users.role', 'student')
            ->get();
        $current_position = 1;
        $current = false;
        foreach ($data as $d) {
            if ($d->id == Auth::user()->id) {
                $current_position = $current_position;
                $current = true;
            } else {
                if ($current == false) {
                    $current_position++;
                }
            }
        }
        $user = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->leftJoin('complete_categories', 'complete_categories.user_id', '=', 'users.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level', DB::raw('COUNT(complete_categories.is_complete) as complete_sub_category'), 'levels.point as point')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->where('users.id', $request->user_id)->first();
        
        $user_point = UserCourse::where('user_id', $request->user_id)
            ->where('is_true', true)
            ->count();
            
        $materi_complete = UserCourse::leftJoin('sub_categories', 'user_courses.sub_category_id', '=', 'sub_categories.id')
            ->select('user_courses.sub_category_id as sub_category_id', 'user_courses.checked as checked', 'user_courses.user_id as user_id', 'user_courses.is_true as is_true')
            ->where('user_id', $request->user_id)
            ->where('checked', true)
            ->groupBy('sub_category_id')
            ->get()
            ->count();
            
        return response()->json(['id' => $user->id,'name' => $user->name,'email' => $user->email,'profile_photo_path' => $user->profile_photo_path,'level' => $user->level,'ranking' => $current_position,'complete_sub_category' => $materi_complete,'point' => $user_point], 200,[],JSON_NUMERIC_CHECK);
    }
}
