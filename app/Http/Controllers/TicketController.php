<?php


namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Http\Request;
use App\Events\ticketcreateevent;

class TicketController extends Controller
{
    public $data;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tickets = Ticket::orderBy('id', 'desc')->get();
        // dd($tickets);
        return view('index', compact('tickets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $statuses = [
            [
                'label' => 'In Progress',
                'value' => 'In Progress',
            ],
            [
                'label' => 'Completed',
                'value' => 'Completed',
            ]
        ];
        return view('create', compact('statuses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // try {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
        ]);

        $ticket = new ticket();
        if ($request->isMethod('post')) {
            $ticket->title = $request->title;
            $ticket->description = $request->description;
            $ticket->status = $request->status;
            $ticket->username = $request->get('user_name');
            $ticket->save();
            $data = ['username' => 'palak', 'email' => 'palakpalak684@gmail.com'];
            event(new ticketcreateevent($data));
        }
        return redirect('index')->with('success', 'Ticket created successfully!');
        // } catch (Exception $e) {
        //     return back()->with('error', $e->getMessage('Something is wrong!!'));
        // }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tickets = Ticket::where('id', $id)->with('comm')->get();
        $ticket = $tickets->toArray();
        // dd($ticket);
        return view('show', compact('ticket'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ticket = Ticket::findorFail($id);
        $statuses = [
            [
                'label' => 'In Progress',
                'value' => 'In Progress',
            ],
            [
                'label' => 'Completed',
                'value' => 'Completed',
            ]
        ];
        return view('edit', compact('ticket', 'statuses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $ticket = Ticket::findorFail($id);
        $request->validate([
            'title' => 'required',
            'description' => 'required',
        ]);

        $ticket->title = $request->title;
        $ticket->description = $request->description;
        $ticket->status = $request->status;
        $ticket->save();
        return redirect()->route('index')->with('success', 'Ticket updated successfully!');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ticket = Ticket::findorFail($id);
        $ticket->delete();
        return redirect()->route('index')->with('danger', 'Ticket deleted successfully!');
    }
}
