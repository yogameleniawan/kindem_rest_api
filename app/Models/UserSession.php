<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserSession extends Model
{
    use HasFactory;

    protected $table = "user_sessions";
    protected $fillable = ['id', 'user_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';
}
