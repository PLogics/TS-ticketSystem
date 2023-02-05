<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\ticketcreateevent;
use App\Models\{
    Comment,
    Ticket
};

class IController extends Controller
{
    //add comment//
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

    // home page for users //
    public function userindex()
    {
        $tickets = Ticket::orderBy('id', 'desc')->get();
        // dd($tickets);
        return vieW('userindex', compact('tickets'));
    }

    // deatil view function for users //
    public function usershow($id)
    {
        $ticket = Ticket::where('id', $id)->with('comm')->get();
        $tickets = $ticket->toArray();
        // dd($tickets);
        return view('usershow', compact('ticket'));
    }
}
