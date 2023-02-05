<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;

    // relation between Ticket and User table to fetch data//
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // relation between Comment and Ticket table to fetch data //
    public function comm()
    {
        return $this->hasMany(Comment::class);
    }
}
