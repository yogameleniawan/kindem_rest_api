<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $table = "courses";
    protected $fillable = ['id', 'sub_category_id', 'indonesia_text', 'english_text', 'image', 'image_course'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function sub_category()
    {
        return $this->belongsTo(SubCategory::class);
    }
}
