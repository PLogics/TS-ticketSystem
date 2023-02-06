<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Interfaces\UserInterface;
use App\Models\Ticket;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    private $userInterface;

    public function __construct(UserInterface $userInterface)
    {
        $this->userInterface = $userInterface;
    }


    // home page for users //
    public function userindex()
    {
        $tickets = $this->userInterface->getAllTickets();
        return vieW('userindex', compact('tickets'));
    }

    // deatil view function for users //
    public function usershow($id)
    {
        $ticket = $this->userInterface->getTicketByID($id);
        return view('usershow', compact('ticket'));
    }
}
