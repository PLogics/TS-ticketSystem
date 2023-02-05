@extends('layout')

@section('main-content')
<div>
    <div class="float-start">
        <h4 class="pb-3">All Tickets</h4>
    </div>
    <div class="float-end">
    </div>
    <div class="clearfix"></div>
</div>

{{-- Users view details section --}}
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
            <div class="float-end">
                <a href="{{ url('usershow',$row->id) }}" class="btn btn-info">
                    <i class="fa fa-eye" aria-hidden="true"></i></a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
@endforeach

@if(count($tickets) === 0)
<div class="alert alert-danger p-2">
    No Ticket Exist. Please Create one Ticket
    <br>
    <br>
</div>
@endif

@endsection