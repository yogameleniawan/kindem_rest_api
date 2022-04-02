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

    public function updateName(Request $request)
    {
        $user = User::find($request->user()->id);
        $user->name = $request->name;
        $user->update([
            'name' => $user->name
        ]);

        return response()
            ->json(['status' => 'true', 'message' => "Name updated", 'data' => $user]);
    }
}
