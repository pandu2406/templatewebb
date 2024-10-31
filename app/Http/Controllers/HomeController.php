<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function pengawasan()
    {
        return view('pengawasan');
    }

    public function monitoring()
    {
        return view('monitoring');
    }

    public function tracking()
    {
        return view('tracking');
    }

    public function rutinan()
    {
        return view('rutinan');
    }

    public function susenas()
    {
        return view('susenas');
    }

    public function seruti()
    {
        return view('seruti');
    }

    public function sakernas()
    {
        return view('sakernas');
    }
}
