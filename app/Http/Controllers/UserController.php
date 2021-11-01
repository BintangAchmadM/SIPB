<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
 
    public function index()
    {
        return view('dashboard', [
           'user' => user::all()
        ]);  
    }

    public function create(Request $request){

        User::create([
            'nama_user' => $request->nama_user,
            'tgl_lahir' => $request->tgl_lahir,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        
        return redirect('/dashboard');

    }

    public function store(Request $request)
    {
        User::create([
            'nama_user' => $request->nama_user,
            'tgl_lahir' => $request->tgl_lahir,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        
        return redirect('/login');
    }

    public function show_create(){
        return view('createuser');

    }
}
