<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    use HasFactory;

    protected $table = "scores";
    protected $fillable = ['id', 'score', 'sub_category_id', 'user_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function sub_category()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
