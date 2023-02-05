@extends('layout')

@section('main-content')
<div>
    <div class="float-start">
        <h4 class="pb-3">Edit Tickets - <span class="badge bg-info">{{ $ticket->title }}</span></h4>
    </div>
    <div class=" float-end">
        <a href="{{ route('ticket.index') }}" class="btn btn-secondary">
            <i class="fa fa-arrow-left"></i></a>
    </div>
    <div class="clearfix"></div>
</div>

{{-- for validation --}}
@if($errors)
    @foreach($errors->all() as $errors)
        <li class="text-danger">
            {{$errors}}
        </li>
    @endforeach
@endif

{{-- Edit Section --}}
<div class="card card-body bg-light p-4">
    <form action="{{ route('ticket.update', $ticket->id) }}" method="post">
        @csrf
        @method('put')
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title" value="{{ $ticket->title }}">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea type="text" class="form-control" id="description" name="description">{{ $ticket->description }}</textarea>
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <select name="status" id="status" class="form-control">
                @foreach ($statuses as $status)
                <option value="{{ $status['value'] }}" {{ $ticket->status === $status['value'] ? 'selected' : '' }}>{{ $status['label'] }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn btn-success">
            <i class="fa fa-check"></i>Submit</button>
    </form>
</div>
@endsection