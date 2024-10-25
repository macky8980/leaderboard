@foreach($users as $user)
    <tr data-user-id="{{ $user->id }}">
        <td>{{ $user->id }}</td>
        <td>{{ $user->name }}</td>
        <td>{{ $user->activities_sum_points }}</td>
        <td>{{ $user->rank }}</td>
    </tr>
@endforeach