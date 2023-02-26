<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\Invoice\GeneralController;
use App\Http\Controllers\Invoice\InvoiceController;
use Illuminate\Support\Facades\Auth;
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

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');


// OUR pos Routes
Route::resource('/' , InvoiceController::class);
Route::resource('invoice', InvoiceController::class);


Route::get('change-language/{locale}',[GeneralController::class, 'changeLanguage'])->name('frontend_change_locale');