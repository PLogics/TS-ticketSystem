<?php

namespace App\Interfaces;

interface TicketInterface
{
    // Display a listing of all tickets
    public function getAllTickets();

    // Show the form for creating a new ticket
    public function createTicket();

    // Store a newly created ticket
    public function storeTicket($record);

    // Display the specified ticket
    public function getTicketByID($id);

    // Update the specified ticket
    public function updateTicket($record, $ticketId);

    // Remove the specified ticket
    public function deleteTicket($ticketId);
}
