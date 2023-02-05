<?php

namespace App\Observers;

use App\Models\Ticket;

class TicketObserver
{
    /** Handle the Ticket "deleting" event. 
     * inorder to delete ticket along with all comments //   
     */
    public function deleting(Ticket $ticket)
    {
        $ticket->comments()->delete();
    }
}
