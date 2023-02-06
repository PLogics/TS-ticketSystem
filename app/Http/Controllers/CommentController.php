<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Interfaces\CommentInterface;

class CommentController extends Controller
{
    private $commentInterface;

    public function __construct(CommentInterface $commentInterface)
    {
        $this->commentInterface = $commentInterface;
    }

    //add comment//
    public function add_comment(Request $request)
    {
        //validate data
        $request->validate([
            'comment' => 'required',
        ]);

        $record = [
            'comment' => $request->comment,
            'username' => $request->get('user_name'),
            'ticket_id' => $request->get('ticket_id'),
        ];

        $comment = $this->commentInterface->storeComment($record);
        return back()->with('success', 'Comment created successfully!');
    }
}
