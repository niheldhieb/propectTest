<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProspectController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get('/allprospects', [ProspectController::class, 'index']);
Route::get('/show/{id}', [ProspectController::class, 'show']);
Route::post('/create', [ProspectController::class, 'store']);
Route::put('/update/{id}', [ProspectController::class, 'update']);
Route::delete('/delete/{id}', [ProspectController::class, 'destroy']);