<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/pengawasan', [App\Http\Controllers\HomeController::class, 'pengawasan'])->name('pengawasan');
Route::get('/monitoring', [App\Http\Controllers\HomeController::class, 'monitoring'])->name('monitoring');
Route::get('/tracking', [App\Http\Controllers\HomeController::class, 'tracking'])->name('tracking');
Route::get('/rutinan', [App\Http\Controllers\HomeController::class, 'rutinan'])->name('rutinan');
Route::get('/susenas', [App\Http\Controllers\HomeController::class, 'susenas'])->name('susenas');
Route::get('/seruti', [App\Http\Controllers\HomeController::class, 'seruti'])->name('seruti');
Route::get('/sakernas', [App\Http\Controllers\HomeController::class, 'sakernas'])->name('sakernas');