<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Interfaces\TicketInterface;

class TicketController extends Controller
{
    private $ticketInterface;

    public function __construct(TicketInterface $ticketInterface)
    {
        $this->ticketInterface = $ticketInterface;
    }

    public $data;

    // Display a listing of all tickets
    public function index()
    {
        $tickets = $this->ticketInterface->getAllTickets();
        return view('index', compact('tickets'));
    }

    // Show the form for creating a new ticket
    public function create()
    {
        $statuses = $this->ticketInterface->createTicket();
        return view('create', compact('statuses'));
    }

    // Store a newly created ticket
    public function store(Request $request)
    {
        // validate data //
        $request->validate([
            'title' => 'required',
            'description' => 'required',
        ]);

        $record = [
            'title' => $request->title,
            'description' => $request->description,
            'status' => $request->status,
            'username' => $request->get('user_name'),
        ];
        $ticket = $this->ticketInterface->storeTicket($record);
        return redirect('index')->with('success', 'Ticket created successfully!');
    }

    // Display the specified ticket
    public function show($id)
    {
        $ticket = $this->ticketInterface->getTicketByID($id);
        return view('show', compact('ticket'));
    }

    // Edit the specified ticket
    public function edit($id)
    {
        $ticket = $this->ticketInterface->getTicketByID($id);
        return view('edit', compact('ticket'));
    }

    //  Update the specified ticket in storage.
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'status' => 'required',
        ]);

        $record = [
            'title' => $request->title,
            'description' => $request->description,
            'status' => $request->status,
            'username' => $request->get('user_name'),
        ];
        $ticket = $this->ticketInterface->updateTicket($record, $id);
        return redirect()->route('index')->with('success', 'Ticket updated successfully!');
    }

    // Remove the specified ticket
    public function destroy($id)
    {
        $ticket = $this->ticketInterface->deleteTicket($id);
        return redirect()->route('index')->with('danger', 'Ticket deleted successfully!');
    }
}
