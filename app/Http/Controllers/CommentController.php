<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller
{
    //add comment
    public function add_comment(Request $request)
    {
        $request->validate([
            'comment' => 'required',
        ]);

        $add = new Comment;
        if ($request->isMethod('post')) {
            $add->comment = $request->get('comment');
            $add->username = $request->get('user_name');
            $add->ticket_id = $request->get('ticket_id');

            $add->save();
        }
        return back()->with('success', 'Comment created successfully!');;
    }
}
