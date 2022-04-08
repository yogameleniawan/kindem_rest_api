<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use App\Models\UserTutorial;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    public function getAllUsers()
    {
        $data = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->get();
        return response()->json(['data' => $data], 200);
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
                ->json(['status' => 'true', 'message' => "Profile updated", 'data' => $user]);
        }
    }

    public function tutorialCheck(Request $request)
    {
        $data = UserTutorial::where('page', $request->page)->where('user_id', Auth::user()->id)->count();
        if ($data > 0) {
            return response()->json(['is_done' => true], 200);
        } else {
            $tutorial = new UserTutorial();
            $tutorial->id = Str::random(10);
            $tutorial->page = $request->page;
            $tutorial->user_id = Auth::user()->id;
            $tutorial->is_done = true;
            $tutorial->save();
            return response()->json(['is_done' => false], 200);
        }
    }
}
