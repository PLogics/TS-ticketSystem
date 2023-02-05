<?php

use App\Http\Controllers\Controller;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IController;
use App\Http\Controllers\TicketController;

// Route for login page // 
Route::get('/', function () {
    return redirect('/index');
})->middleware(['auth', 'verified'])->name('login');

//  Route for Home page //
Route::get('/index', [TicketController::class, 'index'])->name('index');

// add comment //
Route::post('/addcomment', [CommentController::class, 'add_comment'])->middleware(['auth', 'verified'])->name('add_comment');

// isAdmin Middleware can access //
Route::middleware('isAdmin')->group(function () {
    // Resource controller for ticket //
    Route::resource('ticket', TicketController::class);

    Route::get('/', function () {
        return redirect('/index');
    })->middleware(['auth', 'verified'])->name('login');
});

// Route for Users //
Route::get('userindex', [Controller::class, 'userindex']);
Route::get('usershow/{id}', [Controller::class, 'usershow']);

// Route for profile update //
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// Route for Dashboard //
Route::get('/dashboard', function () {
    return redirect('/index');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__ . '/auth.php';
