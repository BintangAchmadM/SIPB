<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeConrtoller;
use App\Http\Controllers\Kategori_Bencana_Controller;
use App\Http\Controllers\PelaporanController;
use App\Http\Controllers\UserController;
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
Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/dashboard', function () {
    return view('dashboard');
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

Route::get('/history', function () {
    return view('history');
});

Route::get('/cobak', function () {
    return view('cobak');
});

//input data
Route::POST('/create_kategori_bencana','App\Http\Controllers\Kategori_Bencana_Controller@create');

//nampilno
Route::get('/cobaknampil','App\Http\Controllers\Kategori_Bencana_Controller@cobatampil');

//gusep
Route::get('/destroy_kb/{id}','App\Http\Controllers\Kategori_Bencana_Controller@destroy');

//edit
Route::get('/editcobaknampil/{id}','App\Http\Controllers\Kategori_Bencana_Controller@edit');
Route::POST('/proseseditcobaknampil/{id}','App\Http\Controllers\Kategori_Bencana_Controller@update');



Route::POST('/insert_laporan'.'App/Http/Controllers/PelaporanController@store');



Route::resource('/pelaporan',PelaporanController::class);
Route::resource('user',UserController::class);



