<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\FeedbackController;

Route::get('/', [HomeController::class,'home'])->name('home');
Route::get('/get-feedbacks', [HomeController::class,'getFeedbacks'])->name('feedbacks.get');
Route::get('/feedback', [FeedbackController::class,'showForm'])->name('feedback.form');
Route::post('/submit-feedback', [FeedbackController::class,'submitFeedback']);
Route::get('/reload-captcha', [FeedbackController::class,'reloadCaptcha'])->name('reload.captcha');