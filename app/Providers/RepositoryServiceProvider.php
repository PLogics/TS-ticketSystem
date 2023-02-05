<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Interfaces\TicketInterface;
use App\Repositories\TicketRepository;

class RepositoryServiceProvider extends ServiceProvider
{
    // Register services.
    public function register()
    {
        //Bind Interface and Repository class together
        $this->app->bind(TicketInterface::class, TicketRepository::class);
    }
}
