<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use App\Models\UserSession;
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
            ->where('users.role', 'student')
            ->get();
        return response()->json(['data' => $data], 200);
    }

    public function getRankingUsers()
    {
        $data = DB::table('users')
            ->join('user_levels', 'users.id', '=', 'user_levels.user_id')
            ->leftJoin('levels', 'user_levels.level_id', '=', 'levels.id')
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->get()
            ->take(10);

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
            ->select('users.id as id', 'users.name as name', 'users.email as email', 'users.role as role', 'users.profile_photo_path as profile_photo_path', 'levels.name as level')
            ->orderBy('levels.point', 'DESC')
            ->where('users.role', 'student')
            ->where('users.id', Auth::user()->id)->first();
        $ranking = collect([
            (object) [
                'id' => $user->id,
                'name' => $user->name,
                'profile_photo_path' => $user->profile_photo_path,
                'level' => $user->level,
                'ranking' => $current_position
            ],
        ]);
        return response()->json(['ranking' => $ranking, 'data' => $data], 200);
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

    public function addSession()
    {
        $user_session = new UserSession();
        $user_session->id = Str::random(10);
        $user_session->user_id = Auth::user()->id;
        $user_session->save();

        return response()->json(['data' => $user_session], 200);
    }
}
