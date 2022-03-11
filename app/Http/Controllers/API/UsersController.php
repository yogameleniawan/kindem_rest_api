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
    public function getUsers()
    {
        if (request('name')) {
            $data = User::where('role', 'student')->where('name', 'like', '%' . request('name') . '%')->get();
        } else {
            $data = User::where('role', 'student')->get();
        }
        return UserResource::collection($data);
    }
}
