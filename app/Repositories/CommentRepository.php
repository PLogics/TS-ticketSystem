<?php

namespace App\Repositories;

use App\Interfaces\CommentInterface;
use App\Models\Comment;

class CommentRepository implements CommentInterface
{
    // Store a new comment
    public function storeComment($record)
    {
        //pass data through array//
        $comment = new comment();
        $comment->comment = $record['comment'];
        $comment->username = $record['username'];
        $comment->ticket_id = $record['ticket_id'];
        $comment->save();

        return $comment;
    }
}
