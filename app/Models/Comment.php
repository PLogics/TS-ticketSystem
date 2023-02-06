<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    // relation between Comment and Ticket table to fetch data through  //
    public function ticket()
    {
        return $this->belongsTo(ticket::class);
    }

     // relation between Comment and User table to fetch data through  //
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
