@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center">Leaderboard</h1>

    <!-- Search Bar -->
    <div class="mb-3">
        <input type="text" id="search-user" class="form-control" placeholder="Search by User ID">
    </div>

    <!-- Filter Options -->
    <div class="mb-3">
        <label for="filter">Filter by:</label>
        <select id="filter" class="form-select">
            <option value="all">All Time</option>
            <option value="day">Today</option>
            <option value="month">This Month</option>
            <option value="year">This Year</option>
        </select>
    </div>

    <!-- Re-calculate Button -->
    <button id="recalculate-btn" class="btn btn-primary mb-3">Re-calculate</button>

    <!-- Leaderboard Table -->
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Total Points</th>
                <th>Rank</th>
            </tr>
        </thead>
        <tbody id="leaderboard-body">
            @foreach($users as $user)
                <tr data-user-id="{{ $user->id }}">
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->total_points }}</td>
                    <td>{{ $user->rank }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

@section('scripts')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Search functionality
        $('#search-user').on('keyup', function() {
            let searchValue = $(this).val().toLowerCase();
            if (searchValue == '') {
                searchValue = 0 ;
            }
            let path = "{{url('/')}}";
            let url = `${path}/leaderboard/search/${searchValue}`;
            $.get(url, function(data) {
                $('#leaderboard-body').html(data);
            });
        });

        // Filter functionality
        $('#filter').on('change', function() {
            let filterValue = $(this).val();
            //let url = `/leaderboard/filter/${filterValue}`; 
            let path = "{{url('/')}}";
            let url = `${path}/leaderboard/filter/${filterValue}`;
            $.get(url, function(data) {
                $('#leaderboard-body').html(data);
            });
        });

        // Re-calculate functionality
        $('#recalculate-btn').on('click', function() {
            let path = "{{url('/')}}";
            let url = `${path}/leaderboard/recalculate`;
            $.get(url, function(data) {
                $('#leaderboard-body').html(data);
            });
        });
    });
</script>
@endsection
@endsection
