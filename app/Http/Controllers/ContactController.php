<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function cpost(Request $request) {
        $contact = Contact::create($request->except(['_token','_method']));
        if ($contact) {
            return redirect()->back()->with('success','Message sent successfully !');
        }else{
            return redirect()->back()->with('danger','Error in Message sent !');
        }
    }
}
