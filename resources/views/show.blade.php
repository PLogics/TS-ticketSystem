@extends('layout')

@section('main-content')
<div>
    <div class="float-start">
        <h4 class="pb-3">View Ticket</h4>
    </div>
    <div class="float-end">
        <a href="{{ route('ticket.index') }}" class="btn btn-secondary">
            <i class="fa fa-arrow-left"></i></a>
    </div>
    <div class="clearfix"></div>
</div>

@foreach($ticket as $row)
<div class="card">
    <h5 class="card-header">
        @if($row['status'] === "In Progress")
        {{$row['title']}}
        @else
        <del>{{$row['title']}}</del>
        @endif

        <span class="badge rounded-pill bg-warning text-dark">
            {{ date('d.M.Y, H:m',strtotime($row['created_at']) ) }}</span>
    </h5>

    <div class="card-body">
        <div class="card-text">
            <div class="float-start">
                @if($row['status'] === "In Progress")
                {{$row['description']}}
                @else
                <del>{{$row['description']}}</del>
                @endif

                <br>

                @if($row['status'] === "In Progress")
                <span class="badge rounded-pill bg-info text-dark">
                    In Progress
                </span>
                @else
                <span class="badge rounded-pill bg-info text-white">
                    Completed
                </span>
                @endif

                <br>
                <small>Last Updated:{{ date('d.M.Y, H:m',strtotime($row['updated_at']) )}}</small>
            </div>
            <div class="float-end">
                <a href="{{ route('ticket.create') }}" class="btn btn-info">
                    <i class="fa fa-plus-circle"></i></a>
                <a href="{{ route('ticket.edit',$row['id']) }}" class="btn btn-success">
                    <i class="fa fa-edit"></i></a>
                <form method="post" action="{{ route('ticket.destroy',$row['id']) }}" style="display:inline">
                    @csrf
                    {{-- @method('delete') --}}
                    <button type="submit" class="btn btn-danger">
                        <i class="fa fa-trash"></i>
                    </button>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>

        <!-- Comment section -->
        <section class="bg-light">
            <div class="container my-3 py-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="card text-dark">
                            <div class="card card-body">
                                <h6 class="card-title">Leave a comment</h6>
                                <form method="post" action="{{url('addcomment')}}">
                                    @csrf
                                    <textarea name="comment" class="form-control" rows="3" required></textarea>

                                    @auth
                                    <input type="hidden" name="user_name" value="{{Auth::User()->name}}" />
                                    <input type="hidden" name="ticket_id" value="{{$row['id']}}" />
                                    @endauth
                                    <input type="submit" class="btn btn-primary mt-3" name="save" value="Submit" />
                                </form>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <h4 class="mb-0">Recent comments</h4>
                            <hr class="my-0" />
                            <br>
                            @foreach ($ticket as $row)
                            @for ($id=count($row['comm'])-1; $id>=0;$id--)
                            <div class="d-flex flex-start">
                                <img class="rounded-circle shadow-1-strong me-3"
                                    src="https://t4.ftcdn.net/jpg/01/23/09/33/360_F_123093367_c7WoJ0uHCkepbgLasnGFBKK8sSNiJw6l.jpg"
                                    alt="avatar" width="60" height="60" />
                                <div>
                                    <h6 class="fw-bold mb-1">{{ $row['comm'][$id]['username']}}</h6>
                                    <div class="d-flex align-items-center mb-3">
                                        <p class="mb-0">
                                            {{ date('d.M.Y, H:m',strtotime($row['comm'][$id]['created_at']) )}}
                                        </p>
                                    </div>
                                    <p class="mb-0">
                                        {{$row['comm'][$id]['comment']}}
                                    </p>
                                </div>
                                <br>
                                <hr class="my-0" style="height: 1px;" />
                            </div>
                            @endfor
                            @endforeach
                        </div>
                        <hr class="my-0" style="height: 1px;" />
                    </div>
                </div>
            </div>
    </div>
    </section>
</div>
@endforeach

@endsection