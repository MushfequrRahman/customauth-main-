<div class="row">
    <div class="col-12 text-center">
        <h1>Users List</h1>
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>

                @foreach ($users as $user)
                <tr>
                    <td>{{ $user->userid }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>