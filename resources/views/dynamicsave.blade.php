<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif
<div class="row">
@if(session()->has('su'))
    <div class="alert alert-success alert-dismissible alertDismissible">
        {{ session()->get('su') }}
    </div>
    @endif
    <div class="col-12 text-center">
    <h2>Dynamic Form Example</h2>

    <form action="{{ route('admin.dynamicsavestore') }}" method="post" enctype="multipart/form-data">
    @csrf
    <table id="dynamicTable">
        <tr>
            <td><input type="text" name="rows[0][name]" placeholder="Enter name" required /></td>
            <td><input type="text" name="rows[0][email]" placeholder="Enter email" required /></td>
            <td><input type="text" name="rows[0][password]" placeholder="Enter password" required /></td>
            <td><input type="file" name="rows[0][image]" placeholder="Enter image" required /></td>
            <td><button type="button" id="addRow">Add Row</button></td>
        </tr>
    </table>

    <button type="submit">Submit</button>
</form>

<script>
    let i = 0;
    $('#addRow').click(function() {
        i++;
        $('#dynamicTable').append(`
            <tr>
                <td><input type="text" name="rows[${i}][name]" placeholder="Enter name" required /></td>
                <td><input type="text" name="rows[${i}][email]" placeholder="Enter email" required /></td>
                <td><input type="text" name="rows[${i}][password]" placeholder="Enter password" required /></td>
                <td><input type="file" name="rows[${i}][image]" placeholder="Enter image" required /></td>
                <td><span class="remove-row">Remove</span></td>
            </tr>
        `);
    });

    $(document).on('click', '.remove-row', function() {
        $(this).closest('tr').remove();
    });
</script>


    </div>
</div>