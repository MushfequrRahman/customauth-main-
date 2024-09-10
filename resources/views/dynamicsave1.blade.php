<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<div class="container mt-5">
    <h3 class="text-center mb-4">Dynamic File Upload with Table Layout</h3>

    <form id="dynamicForm" action="{{ admin_url('upload') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <table class="table table-bordered">
            <thead>
                <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>File</th>
                <th><button type="button" id="addRow" class="btn btn-secondary">ADD</button></th>
                </tr>
            </thead>
            <tbody id="dynamicRows">
                <tr class="row-container">
                
            
            <td><input type="text" name="name[]" class="form-control name-input" placeholder="Name" required onkeyup="validateName(this)">
            <small class="text-danger name-error" style="display:none;">Name is required!</small></td>
            
            <td><input type="text" name="email[]" class="form-control email-input" placeholder="Email" required onkeyup="validateEmail(this)">
            <small class="text-danger email-error" style="display:none;">Email is required!</small></td>
            
            <td><input type="text" name="password[]" class="form-control password-input" placeholder="Password" required onkeyup="validatePassword(this)">
            <small class="text-danger password-error" style="display:none;">Password is required!</small></td>
            <td><input type="file" name="files[]" class="form-control file-input" required onchange="validateFile(this)">
            <small class="text-danger file-error" style="display:none;">Invalid file type or size!</small></td>
            <!-- <select name="types[]" class="form-control" required>
                <option value="">Select Type</option>
                <option value="image">Image</option>
                <option value="document">Document</option>
            </select> -->
                    
                    <td>
                        <span class="remove-row btn btn-sm btn-danger">Remove</span>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="d-flex justify-content-between">
            <!-- <button type="button" id="addRow" class="btn btn-secondary">Add More Rows</button> -->
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>



<!-- JavaScript for dynamic rows and validation -->
<script>
    // Allowed file types and maximum size (2MB)
    var allowedTypes = ['image/jpeg', 'image/png', 'image/jpg', 'image/gif', 'image/svg+xml'];
    var maxSizeInBytes = 2 * 1024 * 1024; // 2MB

    // Validate file input
    function validateFile(input) {
        var file = input.files[0];
        var errorElement = input.nextElementSibling; // Error message small tag

        if (file && (allowedTypes.includes(file.type) && file.size <= maxSizeInBytes)) {
            errorElement.style.display = 'none'; // Hide error message if valid
        } else {
            errorElement.style.display = 'block'; // Show error message if invalid
        }
    }

    // Real-time validation for file input
    function validateFile(input) {
        var file = input.files[0];
        var errorElement = input.nextElementSibling; // Error message small tag
        
        if (file && (allowedTypes.includes(file.type) && file.size <= maxSizeInBytes)) {
            errorElement.style.display = 'none'; // Hide error message if valid
        } else {
            errorElement.style.display = 'block'; // Show error message if invalid
        }
    }

    // Real-time validation for description input
    function validateName(input) {
        var name = input.value.trim();
        var errorElement = input.nextElementSibling; // Small tag for the error message

        if (name === '') {
            errorElement.style.display = 'block'; // Show error message
        } else {
            errorElement.style.display = 'none'; // Hide error message
        }
    }
    function validateEmail(input) {
        var email = input.value.trim();
        var errorElement = input.nextElementSibling; // Small tag for the error message

        if (email === '') {
            errorElement.style.display = 'block'; // Show error message
        } else {
            errorElement.style.display = 'none'; // Hide error message
        }
    }
    function validatePassword(input) {
        var password = input.value.trim();
        var errorElement = input.nextElementSibling; // Small tag for the error message

        if (password === '') {
            errorElement.style.display = 'block'; // Show error message
        } else {
            errorElement.style.display = 'none'; // Hide error message
        }
    }

    // Add a new row dynamically
    document.getElementById('addRow').addEventListener('click', function () {
        var newRow = document.querySelector('.row-container').cloneNode(true);
        newRow.querySelectorAll('input').forEach(input => input.value = ''); // Clear input values
        //newRow.querySelector('select').selectedIndex = 0; // Reset select
        newRow.querySelectorAll('small').forEach(error => error.style.display = 'none'); // Hide error messages
        document.getElementById('dynamicRows').appendChild(newRow);
    });

    // Remove row functionality
    document.addEventListener('click', function (e) {
        if (e.target && e.target.classList.contains('remove-row')) {
            if (document.querySelectorAll('.row-container').length > 1) {
                e.target.closest('.row-container').remove();
            } else {
                alert('At least one row is required.');
            }
        }
    });

    document.getElementById('dynamicForm').onsubmit = function(event) {
        var fileInputs = document.querySelectorAll('.file-input');
        var names = document.querySelectorAll('input[name="name[]"]');
        var emails = document.querySelectorAll('input[name="email[]"]');
        var passwords = document.querySelectorAll('input[name="password[]"]');
        var valid = true;

        fileInputs.forEach(function(fileInput, index) {
            var file = fileInput.files[0];
            var name = names[index].value.trim();
            var email = emails[index].value.trim();
            var password = passwords[index].value.trim();
            var errorElement = fileInput.nextElementSibling;

            // Check if file is valid
            if (!file || !allowedTypes.includes(file.type) || file.size > maxSizeInBytes) {
                errorElement.style.display = 'block';
                valid = false;
            } else {
                errorElement.style.display = 'none';
            }

            // Check if name is valid
            if (name === '') {
                names[index].nextElementSibling.style.display = 'block';
                valid = false;
            } else {
                names[index].nextElementSibling.style.display = 'none';
            }

            // Check if email is valid
            if (email === '') {
                emails[index].nextElementSibling.style.display = 'block';
                valid = false;
            } else {
                emails[index].nextElementSibling.style.display = 'none';
            }

            // Check if password is valid
            if (password === '') {
                passwords[index].nextElementSibling.style.display = 'block';
                valid = false;
            } else {
                passwords[index].nextElementSibling.style.display = 'none';
            }
        });

        // Prevent submission if validation fails
        if (!valid) {
            event.preventDefault();
        }
    };
</script>












