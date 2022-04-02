<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    public function getAllUsers()
    {
        $data = User::where('role', 'student')->get();
        return UserResource::collection($data);
    }

    public function updateProfile(Request $request)
    {
        $data = $request->all();
        $user = User::find($request->user()->id);
        $user->update($data);

        return response()
            ->json(['status' => 'true', 'message' => "Profile updated", 'data' => $user]);
    }
}
