<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\learnerControl;

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
    return view('layouts.template');
});

Route::get('inicio', function () {
    return view('layouts.template');
});

Route::get('IngresoAprendiz', function () {
    return view('inaprendiz');
});

Route::get('IngresoInstructor', function () {
    return view('ininstructor');
});

Route::get('reporte', function () {
    return view('Reporte');
});


Route::get('reporte', [learnerControl::class, 'todosLosRegistros']);

Route::get('consultar-id', [learnerControl::class, 'consultaPorId']);