<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\ScoreResource;
use App\Models\Score;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ScoreController extends Controller
{
    public function getAllScore(Request $request)
    {
        $data = SubCategory::join('scores', 'sub_categories.id', '=', 'scores.sub_category_id')
            ->where('user_id', '=', $request->user_id)
            ->get();
        return ScoreResource::collection($data);
    }
}
