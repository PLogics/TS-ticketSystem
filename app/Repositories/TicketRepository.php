<?php

namespace App\Repositories;

use App\Interfaces\TicketInterface;
use App\Events\ticketcreateevent;
use App\Models\Ticket;

class TicketRepository implements TicketInterface
{
    // Display a listing of all tickets 
    public function getAllTickets()
    {
        $tickets = Ticket::orderBy('id', 'desc')->get();
        // dd($tickets);
        return $tickets;
    }

    // Show the form for creating a new ticket
    public function createTicket()
    {
        return
            [
                [
                    'label' => 'In Progress',
                    'value' => 'In Progress',
                ],
                [
                    'label' => 'Completed',
                    'value' => 'Completed',
                ]
            ];
    }

    // Store a newly created ticket
    public function storeTicket($record)
    {
        // dd($record['username']);
        // return Ticket::createTicket([
        //     'title'=>$record['title'],
        //     'description'=>$record['description'],
        //     'status'=>$record['status'],
        //     'username'=>$record['user_name'],
        // ]);

        //pass data through array//

        $ticket = new ticket();
        $ticket->title = $record['title'];
        $ticket->description = $record['description'];
        $ticket->status = $record['status'];
        $ticket->username = $record['username'];
        $ticket->save();

        $data = ['username' => 'palak', 'email' => 'palakpalak684@gmail.com'];
        event(new ticketcreateevent($data));
        return $ticket;
    }


    // Display the specified ticket
    public function getTicketById($id)
    {
        // dd($id);
        // Ticket::findorFail($id);
        $ticket = Ticket::where('id', $id)->with('comments')->get()->ToArray();
        $statuses = [
            [
                'labelprogress' => 'In Progress',
                'valueprogress' => 'In Progress',
                'labelcomplete' => 'Completed',
                'valuecomplete' => 'Completed',
                'ticket' => $ticket,
            ],
            // [
            //     'label' => 'Completed',
            //     'value' => 'Completed',
            // ],
            // [
            //     'ticket' => $ticket,
            // ]
        ];

        // $recordthis = [
        //     'statuses'=>$statuses,
        //     'ticket'=>$ticket,
        // ];
        // dd($statuses);
        // dd($ticket);
        return $statuses;
    }


    // Update the specified ticket
    public function updateTicket($record, $id)
    {
        $ticket = new ticket();
        $ticket->title = $record['title'];
        $ticket->description = $record['description'];
        $ticket->status = $record['status'];
        $ticket->username = $record['username'];
        // $ticket->username = Auth::User()->name;
        $ticket->save();

        return $ticket = Ticket::find($id);
    }


    // Remove the specified ticket
    public function deleteTicket($id)
    {
        $ticket = Ticket::findorFail($id);
        if ($ticket) {
            return $ticket->delete();
        }
    }
}
