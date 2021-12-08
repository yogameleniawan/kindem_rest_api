<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;

    protected $table = "sub_categories";
    protected $fillable = ['id', 'category_id', 'name', 'image'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function score()
    {
        return $this->hasMany(Score::class);
    }
}
