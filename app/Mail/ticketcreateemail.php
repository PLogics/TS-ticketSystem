<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class ticketcreateemail extends Mailable
{
    public $data;

    use Queueable, SerializesModels;

    // Create a new message instance.
    public function __construct($data)
    {
        $this->data = $data;
    }

    // Get the message envelope.
    public function envelope()
    {
        return new Envelope(
            subject: 'Ticketcreateemail',
        );
    }

    // Get the message content definition.
    public function content()
    {
        return new Content(
            markdown: 'mailview',
            with: [
                'data' => $this->data,
            ]
        );
    }

    // Get the attachments for the message.
    public function attachments()
    {
        return [];
    }
}
