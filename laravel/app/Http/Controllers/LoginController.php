<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller;


class LoginController extends Controller
{
    public function index()
    {
        return view('login.index', [
            'title' => 'Login',
            'active' => 'Login'
        ]);
    }
}
