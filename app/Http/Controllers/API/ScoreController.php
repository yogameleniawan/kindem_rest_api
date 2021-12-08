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
        $data = Score::leftJoin('sub_categories', 'scores.sub_category_id', '=', 'sub_categories.id')
            ->where('user_id', '=', $request->user_id)
            ->orderBy('created_at', 'DESC')
            ->get();
        return ScoreResource::collection($data);
    }
}
