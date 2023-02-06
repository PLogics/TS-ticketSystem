<?php

namespace App\Repositories;

use App\Interfaces\UserInterface;
use App\Models\Ticket;

class UserRepository implements UserInterface
{

    // Display a listing of all tickets 
    public function getAllTickets()
    {
        $tickets = Ticket::orderBy('id', 'desc')->get();
        return $tickets;
    }

    // Display the specified ticket
    public function getTicketByID($id)
    {
        $ticket = Ticket::where('id', $id)->with('comments')->get();
        return $ticket;
    }
}
