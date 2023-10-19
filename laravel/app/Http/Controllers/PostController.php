<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Post;


class PostController extends Controller
{
    public function index()
    {
        return view('posts', [
            "tittle" => "Posts",
            "posts" => Post::all()
        ]);
    }

    public function show($slug)
    {
        return view('post', [
            "tittle" => "Single Post",
            "post" => Post::find($slug)
        ]);
    }

}
