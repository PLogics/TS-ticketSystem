<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Observers\TicketObserver;
use App\Models\Ticket;

class AppServiceProvider extends ServiceProvider
{
    // Bootstrap any application services.
    public function boot()
    {
        Ticket::observe(TicketObserver::class);
    }
}
