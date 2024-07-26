<?php

use App\Http\Controllers\Admin\UploadController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\CartController as Cart;
use App\Http\Controllers\MainController as Main;
use App\Http\Controllers\CartController;




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



Route::get('admin/users/login', [LoginController::class,'index'])->name('login');
Route::post('admin/users/login/store', [LoginController::class,'store']);
Route::get('admin/users/register', [LoginController::class,'showRegistrationForm'])->name('register');
Route::post('admin/users/register/store', [LoginController::class, 'register']);
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');





Route::middleware('auth')->group(function () {
    Route::prefix('admin')->group(function () {
        
        Route::get('/', [MainController::class, 'index'])->name('admin');        
        Route::get('/main', [MainController::class, 'index'])
        ->middleware('auth');

        // Menu   
        Route::prefix('menus')->group(function () {
            Route::get('add', [MenuController::class, 'create']);
            Route::post('add', [MenuController::class,'store']);
            Route::get('list', [MenuController::class,'index'])->name('menu.list');
            Route::delete('destroy', [MenuController::class,'destroy']);
            Route::get('edit/{menu}', [MenuController::class,'show']);
            Route::post('edit/{menu}', [MenuController::class,'update']);
        });

        Route::prefix('products')->group(function () {
            Route::get('add', [ProductController::class, 'create']);
            Route::post('add', [ProductController::class, 'store']);
            Route::get('list', [ProductController::class, 'index']);
            Route::get('edit/{product}', [ProductController::class,'show']);
            Route::post('edit/{product}', [ProductController::class,'update']);
            Route::delete('destroy', [ProductController::class,'destroy']);
        });

        Route::prefix('sliders')->group(function () {
            Route::get('add', [SliderController::class, 'create']);
            Route::post('add', [SliderController::class, 'store']);
            Route::get('list', [SliderController::class, 'index']);
            Route::get('edit/{slider}', [SliderController::class,'show']);
            Route::post('edit/{slider}', [SliderController::class,'update']);
            Route::delete('destroy', [SliderController::class,'destroy']);
        });

        Route::post('upload/services', [UploadController::class,'store'])->name('');

        Route::get('customers', [Cart::class, 'index']);
        Route::get('customers/view/{customer}', [Cart::class, 'show']);
    });
});

Route::get('/', [Main::class, 'index']);
Route::post('/services/load-product', [Main::class, 'loadProduct']);
Route::get('danh-muc/{id}-{slug}.html', [App\Http\Controllers\MenuController::class, 'index']);
Route::get('san-pham/{id}-{slug}.html', [App\Http\Controllers\ProductController::class, 'index']);

Route::post('add-cart', [CartController::class, 'index']);
Route::get('carts', [CartController::class, 'show'])->name('carts');
Route::post('update-cart', [CartController::class, 'update']);
Route::get('carts/delete/{id}', [CartController::class, 'remove']);
Route::post('carts', [CartController::class, 'addCart']);

