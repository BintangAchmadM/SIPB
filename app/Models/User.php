<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    use HasFactory;
    protected $table = 'users';

    public function Pelaporan3()
    {
        return $this->hasMany(Pelaporan::class,'FK_Id_user','id');
    }

    public function user_role()
    {
        return $this->hasMany(UserRole::class,'FK_Id_user','id');
    }

}
