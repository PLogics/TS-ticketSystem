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

    // Display a listing of the resource.
    public function index()
    {
        $tickets = $this->ticketInterface->getAllTickets();
        // $tickets = Ticket::orderBy('id', 'desc')->get();
        return view('index', compact('tickets'));
    }

    // Show the form for creating a new resource.
    public function create()
    {
        $statuses = $this->ticketInterface->createTicket();
        //     // $statuses = [
        //     //     [
        //     //         'label' => 'In Progress',
        //     //         'value' => 'In Progress',
        //     //     ],
        //     //     [
        //     //         'label' => 'Completed',
        //     //         'value' => 'Completed',
        //     //     ]
        //     // ];
        return view('create', compact('statuses'));
    }

    // Store a newly created resource in storage.
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

        // $ticket = new ticket();
        // if ($request->isMethod('post')) {
        //     $ticket->title = $request->title;
        //     $ticket->description = $request->description;
        //     $ticket->status = $request->status;
        //     $ticket->username = $request->get('user_name');
        //     $ticket->save();
        //     $data = ['username' => 'palak', 'email' => 'palakpalak684@gmail.com'];
        //     event(new ticketcreateevent($data));
        // }
        $ticket = $this->ticketInterface->storeTicket($record);
        return redirect('index')->with('success', 'Ticket created successfully!');
    }

    // Display the specified resource.
    public function show($id)
    {
        $ticket = $this->ticketInterface->getTicketByID($id);
        // $ticket = Ticket::where('id', $id)->get();
        // dd($ticket);
        return view('show', compact('ticket'));
    }

    // Show the form for editing the specified resource.
    public function edit($id)
    {

        $ticket = $this->ticketInterface->getTicketByID($id);
        // $ticket = Ticket::findorFail($id);
        // $statuses = [
        //     [
        //         'label' => 'In Progress',
        //         'value' => 'In Progress',
        //     ],
        //     [
        //         'label' => 'Completed',
        //         'value' => 'Completed',
        //     ]
        // ];
        // return view('edit', compact('ticket', 'statuses'));
        return view('edit', compact('ticket'));
    }

    //  Update the specified resource in storage.
    public function update(Request $request, $id)
    {
        // $ticket = Ticket::findorFail($id);

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

        // $ticket->title = $request->title;
        // $ticket->description = $request->description;
        // $ticket->status = $request->status;
        // $ticket->save();

        $ticket = $this->ticketInterface->updateTicket($record, $id);
        return redirect()->route('index')->with('success', 'Ticket updated successfully!');
    }


    // Remove the specified resource from storage.
    public function destroy($id)
    {
        $ticket = $this->ticketInterface->deleteTicket($id);
        // $ticket = Ticket::findorFail($id);
        // $ticket->delete();
        return redirect()->route('index')->with('danger', 'Ticket deleted successfully!');
    }



    // // Display a listing of the resource.
    // public function index()
    // {
    //     $tickets = Ticket::orderBy('id', 'desc')->get();
    //     // dd($tickets);
    //     return view('index', compact('tickets'));
    // }

    // // Show the form for creating a new resource.
    // public function create()
    // {
    //     $statuses = [
    //         [
    //             'label' => 'In Progress',
    //             'value' => 'In Progress',
    //         ],
    //         [
    //             'label' => 'Completed',
    //             'value' => 'Completed',
    //         ]
    //     ];
    //     return view('create', compact('statuses'));
    // }

    // // Store a newly created resource in storage.
    // public function store(Request $request)
    // {
    //     // try {
    //     $request->validate([
    //         'title' => 'required',
    //         'description' => 'required',
    //     ]);

    //     $ticket = new ticket();
    //     if ($request->isMethod('post')) {
    //         $ticket->title = $request->title;
    //         $ticket->description = $request->description;
    //         $ticket->status = $request->status;
    //         $ticket->username = $request->get('user_name');
    //         $ticket->save();
    //         $data = ['username' => 'palak', 'email' => 'palakpalak684@gmail.com'];
    //         event(new ticketcreateevent($data));
    //     }
    //     return redirect('index')->with('success', 'Ticket created successfully!');
    // }

    // // Display the specified resource.
    // public function show($id)
    // {
    //     $tickets = Ticket::where('id', $id)->with('comm')->get();
    //     $ticket = $tickets->toArray();
    //     // dd($ticket);
    //     return view('show', compact('ticket'));
    // }

    // // Show the form for editing the specified resource.
    // public function edit($id)
    // {
    //     $ticket = Ticket::findorFail($id);
    //     $statuses = [
    //         [
    //             'label' => 'In Progress',
    //             'value' => 'In Progress',
    //         ],
    //         [
    //             'label' => 'Completed',
    //             'value' => 'Completed',
    //         ]
    //     ];
    //     return view('edit', compact('ticket', 'statuses'));
    // }

    // //  Update the specified resource in storage.
    // public function update(Request $request, $id)
    // {
    //     $ticket = Ticket::findorFail($id);
    //     $request->validate([
    //         'title' => 'required',
    //         'description' => 'required',
    //     ]);

    //     $ticket->title = $request->title;
    //     $ticket->description = $request->description;
    //     $ticket->status = $request->status;
    //     $ticket->save();
    //     return redirect()->route('index')->with('success', 'Ticket updated successfully!');
    // }

    // // Remove the specified resource from storage.
    // public function destroy($id)
    // {
    //     $ticket = Ticket::findorFail($id);
    //     $ticket->delete();
    //     return redirect()->route('index')->with('danger', 'Ticket deleted successfully!');
    // }
}
