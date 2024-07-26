<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
    public function index()
    {

        $user = Auth::user();

        // Lấy tên người dùng
        $name = $user->name;
        return view('admin.home', [
            'title' => 'Trang Quản Trị Admin',
            'name' => $name
        ]);
    }
    
    
}
