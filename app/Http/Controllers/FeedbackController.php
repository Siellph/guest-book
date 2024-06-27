<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function showForm() {
        return view('feedback.form');
    }

    public function submitFeedback(Request $request){
        $request->validate([
            'username' => 'required|regex:/^[A-Za-z0-9]+$/',
            'email' => 'required|email',
            'captcha' => 'required|captcha',
            'feedback' => 'required|string|not_regex:/<[^>]*>/'
        ]);

        // Обработка отзыва (например, сохранение в БД)
        $feedback = new Feedback();
        $feedback->username = $request->input('username');
        $feedback->email = $request->input('email');
        $feedback->feedback = $request->input('feedback');
        $feedback->user_ip_address = $request->ip();
        $feedback->user_agent = $request->userAgent();
        $feedback->save();

        return response()->json(['success' => true, 'feedback' => $feedback]);
    }

    public function reloadCaptcha(){
        return response()->json(['captcha'=>captcha_img('flat')]);
    }
}