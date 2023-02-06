<?php

namespace App\Interfaces;

interface userInterface
{
    // Display a listing of all tickets
    public function getAllTickets();

    // Display the specified ticket
    public function getTicketByID($id);
}
