<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserCourse extends Model
{
    use HasFactory;

    protected $table = "users_courses";
    protected $fillable = ['id', 'answer', 'checked', 'is_true', 'course_id', 'user_id', 'sub_category_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function courses()
    {
        return $this->belongsTo(Course::class);
    }

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
