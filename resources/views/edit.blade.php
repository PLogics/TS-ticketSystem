@extends('layout')

@section('main-content')
<div>
    <div class="float-start">
        <h4 class="pb-3">Edit Tickets - <span class="badge bg-info">{{ $ticket[0]['ticket'][0]['title'] }}</span></h4>
    </div>
    <div class=" float-end">
        <a href="{{ route('ticket.index') }}" class="btn btn-secondary">
            <i class="fa fa-arrow-left"></i></a>
    </div>
    <div class="clearfix"></div>
</div>

{{-- for validation --}}
@if ($errors)
@foreach ($errors->all() as $errors)
<li class="text-danger">
    {{ $errors }}
</li>
@endforeach
@endif


{{-- Edit Section --}}
<div class="card card-body bg-light p-4">
    <form action="{{ route('ticket.update', $ticket[0]['ticket'][0]['id']) }}" method="post">
        @csrf
        @method('put')
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title"
                value="{{ $ticket[0]['ticket'][0]['title'] }}">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea type="text" class="form-control" id="description"
                name="description">{{ $ticket[0]['ticket'][0]['description'] }}</textarea>
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <select name="status" id="status" class="form-control">
                <option value="">---Select Status---</option>
                <option value="In Progress">In Progress</option>
                <option value="Completed">Completed</option>
            </select>
        </div>
        @auth
        <input type="hidden" name="user_name" value="{{Auth::User()->name}}" />
        @endauth
        <button type="submit" class="btn btn-success">
            <i class="fa fa-check"></i>Submit</button>
    </form>
</div>
@endsection