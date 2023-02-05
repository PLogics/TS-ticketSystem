<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Ticket;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    // home page for users
    public function userindex()
    {
        $tickets = Ticket::orderBy('id', 'desc')->get();
        // dd($tickets);
        return vieW('userindex', compact('tickets'));
    }

    // deatil view function for users
    public function usershow($id)
    {
        $ticket = Ticket::where('id', $id)->get();
        // dd($ticket);
        return view('usershow', compact('ticket'));
    }
}
