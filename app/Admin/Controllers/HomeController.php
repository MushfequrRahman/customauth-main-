<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use OpenAdmin\Admin\Admin;
use OpenAdmin\Admin\Controllers\Dashboard;
use OpenAdmin\Admin\Layout\Column;
use OpenAdmin\Admin\Layout\Content;
use OpenAdmin\Admin\Layout\Row;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dashboard')
            ->description('Description...')
            ->row(Dashboard::title())
            ->row(function (Row $row) {

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::extensions());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
    }
    public function about(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('About')
            ->view('about');
        
    }
    public function customuser(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Custom User')
            ->view('customuser');
        
    }
    public function customuserstore(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:32',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|required|max:255',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        // Handle the file upload
        if ($request->hasFile('image')) {
            // Get the uploaded file
            $image = $request->file('image');
            
            // Create a unique file name
            $filename = time() . '_' . $image->getClientOriginalName();
            
            // Store the file in the 'public/uploads/images' directory
            $filePath = $image->storeAs('uploads/images', $filename, 'public');
        DB::table('custom_user')->insert([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
            'image' => $filename,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        //echo "successful";

        // Additional logic or redirection after successful data storage

        // return redirect()->route('admin.comment')->with('success', 'Comment stored successfully!');
        //return redirect()->route('admin.comment');
        return redirect()->back()->with('su', 'Custom User created successfully!');
    } 
        //return redirect()->route('/'); 
        //return back()->with('success', 'successfully inserted');

        
        
    }
}
