<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\PastesRequest;
use App\Models\Paste;
class PastesController extends Controller
{
   public function submit(PastesRequest $req) {
    $paste = new Paste();
    $paste->title = $req->input('title');
    $paste->message = $req->input('message');
    $paste->expiration = $req->input('expiration');
    $paste->access = $req->input('access');
    $paste->lang = $req->input('lang');
    $paste->user = $req->input('user');

    $paste->save();

    return redirect()->route('home')->with('success', 'Сообщение было добавлено');
   }
   public function allData() {
      //$paste = new Paste();
      //return view('messages', ['data' => $paste->where('access', '=', 1)->get()]);
      $paste = Paste::paginate(10);

    return view('messages', ['data' => $paste->where('access', '=', 1)]);
  }
   public function showOneMessage($id) {
      $paste = new Paste;
      return view('one-message', ['data' => $paste->find($id)]);
   }  
}
