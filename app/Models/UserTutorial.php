<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserTutorial extends Model
{
    use HasFactory;

    protected $table = "user_tutorials";
    protected $fillable = ['id', 'page', 'is_done', 'user_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';
}
