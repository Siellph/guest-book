<?php

namespace App\Http\Controllers;
use App\Models\Feedback;

class HomeController extends Controller
{
    public function home() {
        return view('home');
    }

    public function getFeedbacks(){
        $feedbacks = Feedback::orderBy('created_at', 'desc')->get();
        $formattedFeedbacks = $feedbacks->map(function($feedback) {
            return [
                'username' => $feedback->username,
                'email' => $feedback->email,
                'feedback' => $feedback->feedback,
                'created_at' => $feedback->created_at->format('d.m.Y H:i:s'),
            ];
        });
        return response()->json(['feedbacks' => $formattedFeedbacks]);
    }
}