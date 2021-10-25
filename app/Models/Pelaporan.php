<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pelaporan extends Model
{
    use HasFactory;
    protected $table = 'pelaporan';

    public function user()
    {
        return $this->belongsTo(User::class,'FK_Id_user','id_pelaporan');
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class,'FK_Id_kecamatan','id_pelaporan');
    }

    public function bencana()
    {
        return $this->belongsTo(Bencana::class,'FK_Id_bencana','id_pelaporan');
    }

    public function detail_korban()
    {
        return $this->hasMany(DetailKorban::class,'FK_Id_pelporan','id_pelaporan');
    }
}
