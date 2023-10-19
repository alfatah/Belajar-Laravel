<?php


use Illuminate\Support\Facades\Route;
use App\Models\Post;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "tittle" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "tittle" => "About",
        "name" => "Sholahuddin Alfatah",
        "email" => "alfatah1505@gmail.com",
        "image" => "alfatah.jpg"
    ]);
});


Route::get('/posts', function () {
    return view('posts', [
        "tittle" => "Posts",
        "posts" => Post::all()
    ]);
});


// halaman single post
Route::get('posts/{slug}', function($slug) {


    return view('post', [
        "tittle" => "Single Post",
        "post" => Post::find($slug)
    ]);

});
