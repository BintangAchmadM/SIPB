<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bencana extends Model
{
    protected $table = 'bencana';

    public function kategori_bencana()
    {
        return $this->belongsTo('App/Kategori_Bencana','FK_Id_kategori_bencana','id_bencana');
    }

    public function Pelaporan2()
    {
        return $this->hasMany('App/Pelaporan','FK_Id_bencana','id_bencana');
    }
}
