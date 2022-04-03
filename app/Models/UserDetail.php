<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    use HasFactory;

    protected $table = "user_details";
    protected $fillable = ['id', 'name', 'address', 'gender', 'user_id'];
    public $timestamps = true;
    public $incrementing = false;
    public $keyType = 'char';

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
