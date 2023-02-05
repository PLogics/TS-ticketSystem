<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Observers\TicketObserver;
use App\Models\Ticket;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Ticket::observe(TicketObserver::class);
    }
}
