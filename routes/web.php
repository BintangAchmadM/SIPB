<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeConrtoller;
use App\Http\Controllers\PelaporanController;
use App\Http\Controllers\Table_UserController;
use App\Http\Controllers\UserController;
use App\Models\Pelaporan;
use App\Http\Controllers\LoginController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//ROUTES DASAR
Route::get('/', [PelaporanController::class, 'create']);

Route::get('/about', function () {
    return view('about');
});

Route::get('/login', function () {
    return view('login');
});

Route::get('/daftar', function () {
    return view('daftar');
});

Route::get('/artikel', function () {
    return view('artikel');
});

Route::get('/dashboard', function () {
    return view('dashboard');
});

Route::get('/createuser', function () {
    return view('createuser');
});

Route::get('/histori', [PelaporanController::class, 'index']) ;

Route::get('/dashboard',[UserController::class,'index']);

Route::post('/register', [UserController::class, 'store']) ;

Route::post('/postlogin', [LoginController::class, 'authenticate']) ;

Route::post('/lapor', [PelaporanController::class, 'store']) ;

Route::get('/create',[UserController::class,'show_create']);

Route::POST('/createe',[UserController::class,'create']);

