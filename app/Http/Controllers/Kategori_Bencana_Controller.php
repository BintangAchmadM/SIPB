<?php

namespace App\Http\Controllers;

use App\Models\Kategori_Bencana;
use App\Models\Kota;
use Illuminate\Http\Request;

class Kategori_Bencana_Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $data = $request->input();
        $katben = new Kategori_Bencana();
        $katben->kategori_bencana   = $data['kategori_bencana'];
        $katben->save();
       

        return redirect('cobaknampil');
    }

    public function cobatampil()
    {
        $a = Kategori_Bencana::all();
        return view('cobaknampil', ['a'=>$a]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kategori_Bencana  $kategori_Bencana
     * @return \Illuminate\Http\Response
     */
    public function show(Kategori_Bencana $kategori_Bencana)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kategori_Bencana  $kategori_Bencana
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Kategori_Bencana::find($id);
        return view('nyobakedit', ['item'=>$item]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kategori_Bencana  $kategori_Bencana
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $item = Kategori_Bencana::find($id)->where('id',$id)->update([
            'id' => $request->id,
            'Kategori_Bencana' => $request->Kategori_Bencana     

        ]);
            return redirect('cobaknampil');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kategori_Bencana  $kategori_Bencana
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Kategori_Bencana::find($id);
        $item->delete();
        return redirect('cobaknampil');
    }
}
