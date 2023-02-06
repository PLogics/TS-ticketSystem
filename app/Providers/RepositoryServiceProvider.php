<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Interfaces\TicketInterface;
use App\Repositories\TicketRepository;
use App\Interfaces\CommentInterface;
use App\Repositories\CommentRepository;
use App\Interfaces\UserInterface;
use App\Repositories\UserRepository;

class RepositoryServiceProvider extends ServiceProvider
{
    // Register services.
    public function register()
    {
        //Bind Interface and Repository class together

        //for Ticket Controller
        $this->app->bind(TicketInterface::class, TicketRepository::class);

        //for Comment Controller
        $this->app->bind(CommentInterface::class, CommentRepository::class);

        //for Controller
        $this->app->bind(UserInterface::class, UserRepository::class);
    }
}
