<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;
use App\Models\c;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.users.login', [
            'title' => 'Đăng nhập hệ thống'
        ]);
    }

    
    public function store(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'password'=> 'required'
        ], [
            'email.required'=> 'Email không được để trống',
            'email.email' => 'Email không đúng định dạng',
            'password.required' => 'Mật khẩu không được để trống'
        ]);

        if (Auth::attempt([
            'email'=> $request->input('email'), 
            'password'=>$request->input('password')
            ], $request->input('remember'))) {
            return redirect()->route('admin');
        }

        Session::flash('error','Email hoặc mật khẩu không chính xác');
        return redirect()->back();
    }

    public function showRegistrationForm()
    {
        return view('admin.users.register', [
            'title' => 'Đăng ký hệ thống'
        ]);
    }
    
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed',
        ],[
            'name.required' => 'Họ tên không để trống',
            'email.required' => 'Email không để trống',
            'email.email' => 'Email không đúng định dạng',
            'password.required' => 'Mật khẩu không được để trống',
            'password.confirmed' => 'Mật khẩu không trùng khớp'
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect()->route('admin');
    }
    
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
   

    
}
