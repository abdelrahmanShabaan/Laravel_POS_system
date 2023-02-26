<?php

namespace App\Http\Controllers\Invoice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
   
    public function index()
    {


        return view('frontend.index');

    }

    
    public function create()
    {
        return view('frontend.create');
    }


 
    public function store(Request $request)
    {
        //
    }
  
  
    public function show($id)
    {
        //
    }

   
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

   
    public function destroy($id)
    {
        //
    }
}
