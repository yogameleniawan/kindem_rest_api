<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\ScoreResource;
use App\Models\Score;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ScoreController extends Controller
{
    public function getAllScore(Request $request)
    {
        $data = SubCategory::join('scores', 'sub_categories.id', '=', 'scores.sub_category_id')
            ->where('user_id', '=', Auth::user()->id)
            ->get();
        return response()->json(['data' => $data], 200 ,[],JSON_NUMERIC_CHECK);
        // return ScoreResource::collection($data);
    }
}
