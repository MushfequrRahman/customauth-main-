<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- <script src="{{ asset('js/jquery-2.1.1.min.js') }}"></script> -->
 <style>
    .error{color: red;}
 </style>
<script>
    $(document).ready(function() {
        $(".alertDismissible").fadeTo(2000, 500).slideUp(500, function() {
            $(".alertDismissible").slideUp(600);
        });
    })
</script>
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
    <div class="col-6 text-center">
        <form action="{{ route('admin.customuserstore') }}" method="post" enctype="multipart/form-data">
            @csrf
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Name" value="{{ old('name') }}">
                    @error('name')
                    <div class="error">{{ $message }}</div>
                    @enderror
                </td>
                    
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" placeholder="email" value="{{ old('email') }}">
                    @error('email')
                    <div class="error">{{ $message }}</div>
                    @enderror
                </td>
                    
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="password" value="{{ old('password') }}">
                    @error('password')
                    <div class="error">{{ $message }}</div>
                    @enderror
                </td>
                    
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="image">
                    @error('image')
                    <div class="error">{{ $message }}</div>
                    @enderror
                </td>
                </tr>
                <tr>

                    <td>
                        <input type="submit" name="submit" value="submit" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="col-6 text-center">
        <h1>Welcome to Your View</h1>
        <p>This is your about content.</p>
    </div>
</div>