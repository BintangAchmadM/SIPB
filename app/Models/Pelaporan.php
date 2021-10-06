<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pelaporan extends Model
{

    protected $table = 'pelaporan';

    public function user()
    {
        return $this->belongsTo('App/User','FK_Id_user','id_pelaporan');
    }

    public function kecamatan()
    {
        return $this->belongsTo('App/Kecamatan','FK_Id_kecamatan','id_pelaporan');
    }

    public function bencana()
    {
        return $this->belongsTo('App/Bencana','FK_Id_bencana','id_pelaporan');
    }

    public function detail_korban()
    {
        return $this->hasMany('App/DetailKorban','FK_Id_pelporan','id_pelaporan');
    }
}
