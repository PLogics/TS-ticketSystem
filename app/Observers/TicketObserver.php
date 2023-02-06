<?php

namespace App\Observers;

use App\Models\Ticket;

class TicketObserver
{
    // Handle the Ticket "deleting" event.
    public function deleting(Ticket $ticket)
    {
        $ticket->comments()->delete();
    }
}
