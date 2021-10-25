<?php

namespace App\Http\Controllers;

use App\Models\Table_User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;

// class UserController extends Controller
// {
//     //
// 
 function index()
{
       $datas = User::all();

       return $datas;
    };
