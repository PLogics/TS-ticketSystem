<?php

namespace App\Listeners;

use App\Events\ticketcreateevent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Jobs\ticketcreatejob;

class ticketcreatelistner
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\ticketcreateevent  $event
     * @return void
     */

    // dispatch mail through job //
    public function handle(ticketcreateevent $event)
    {
        ticketcreatejob::dispatch($event)->delay(now()->addSeconds(1));
    }
}
