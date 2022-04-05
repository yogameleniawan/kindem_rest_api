<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Level extends Model
{
    use HasFactory;
    protected $table = "levels";
    protected $fillable = ['id', 'name', 'point'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';
}
