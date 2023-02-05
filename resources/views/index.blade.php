@extends('layout') 

@section('main-content')
<div>
    <div class="float-start">
        <h4 class="pb-3">All Tickets</h4>
    </div>
    <div class="float-end">
        <a href="{{ route('ticket.create') }}" class="btn btn-secondary">
            <i class="fa fa-plus-circle"></i></a>
    </div>
    <div class="clearfix"></div>
</div>

{{-- condition according to status --}}
@foreach($tickets as $row)
<div class="card">
    <h5 class="card-header">
        @if($row->status === "In Progress")
        {{$row->title}}
        @else
        <del>{{ $row->title }}</del>
        @endif

        <span class="badge rounded-pill bg-warning text-dark">
            {{$row->created_at}}</span>
    </h5>

    {{-- All Tickets view --}}
    <div class="card-body">
        <div class="card-text">
            <div class="float-start">
                @if($row->status === "In Progress")
                {{$row->description}}
                @else
                <del>{{ $row->description }}</del>
                @endif

                <br>

                @if($row->status === "In Progress")
                <span class="badge rounded-pill bg-info text-dark">
                    In Progress
                </span>
                @else
                <span class="badge rounded-pill bg-info text-white">
                    Completed
                </span>
                @endif

                <br>

                <small>Last Updated:{{$row->updated_at}}</small>
            </div>
            {{-- show detailed ticket --}}
            <div class="float-end">
                <a href="{{ route('ticket.show',$row->id) }}" class="btn btn-info">
                    <i class="fa fa-eye" aria-hidden="true"></i></a>
                {{-- edit code --}}
                <a href="{{ route('ticket.edit',$row->id) }}" class="btn btn-success">
                    <i class="fa fa-edit"></i></a>
                {{-- route for delete ticket --}}
                <form method="post" action="{{ route('ticket.destroy',$row->id) }}" style="display:inline">
                    @csrf
                    @method('delete')
                    <button type="submit" class="btn btn-danger">
                        <i class="fa fa-trash"></i>
                    </button>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
@endforeach

{{-- No ticket exist validation --}}
@if(count($tickets) === 0)
<div class="alert alert-danger p-2">
    No Ticket Exist. Please Create one Ticket
    <br>
    <br>
    <a href="{{ route('ticket.create') }}" class="btn btn=info">
        <i class="fa fa-plus-circle"></i>Create Ticket</a>
</div>
@endif

@endsection