<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserLevel extends Model
{
    use HasFactory;
    protected $table = "user_levels";
    protected $fillable = ['id', 'user_id', 'level_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
