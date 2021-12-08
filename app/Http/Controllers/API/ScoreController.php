<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\ScoreResource;
use App\Models\Score;
use Illuminate\Http\Request;

class ScoreController extends Controller
{
    public function getAllScore(Request $request)
    {
        $data = Score::where('user_id', '=', $request->user_id)
            ->where('sub_category_id', '=', $request->sub_category_id)
            ->get();
        return ScoreResource::collection($data);
    }
}
