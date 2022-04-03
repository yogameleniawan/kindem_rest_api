<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompleteCategory extends Model
{
    use HasFactory;
    protected $table = "complete_categories";
    protected $fillable = ['id', 'user_id', 'category_id', 'is_complete'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';
}
