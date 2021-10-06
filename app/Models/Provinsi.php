<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    protected $table = 'Provinsi';

    public function kota()
    {
        return $this->hasMany('App/Kota','FK_ID_PROVINSI','id_provinsi');
    }

}
