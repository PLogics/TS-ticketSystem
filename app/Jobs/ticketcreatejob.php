<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\ticketcreateemail;

class ticketcreatejob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    // Execute the job.
    public function handle()
    {
        $users = User::where('role', 'User')
            ->get();
        foreach ($users as $user) {
            // print_r($user->email);
            Mail::to($user->email)->send(new ticketcreateemail($user));
        }
    }
}
