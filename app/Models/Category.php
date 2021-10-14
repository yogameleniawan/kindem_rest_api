<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = "categories";
    protected $fillable = ['id', 'name', 'image'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function sub_category()
    {
        return $this->hasMany(SubCategory::class);
    }
}
