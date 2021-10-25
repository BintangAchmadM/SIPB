<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\Kategori_Bencana;
use App\Models\Provinsi;
use App\Models\Kota;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    
    public function run()
    {
         \App\Models\User::factory(10)->create();

        
        //  \App\Models\Kategori_Bencana::factory(5)->create();

        //  \App\Models\Kota::factory(5)->create();


        Kategori_Bencana::create([

            'Kategori_Bencana' => 'Berbahaya'

        ]);

        Kategori_Bencana::create([

            'Kategori_Bencana' => 'Biasa saja'

        ]);

        // Provinsi::factory(10)->create();
        
        Provinsi::create([
            'nama_provinsi' => 'Jawa Timur'

        ]);
         
        //  \App\Models\kategori_bencana::factory(10)->create();
        //  \App\Models\Role::factory(10)->create();
         
        //  \App\Models\Bencana::factory(10)->create();
         
        //  \App\Models\DetailKorban::factory(10)->create();
         
        //  Kategori_Bencana::factory(10)->create();
         
        //  \App\Models\Kecamatan::factory(10)->create();

        //  \App\Models\Kota::factory(10)->create();
         
        //  \App\Models\Pelaporan::factory(10)->create();

        //  \App\Models\Provinsi::factory(10)->create();
         
        //  \App\Models\UserRole::factory(10)->create();

         
        // DB::table('users')->insert([
        //     'Name' => Str::random(10),
        //     'email' => Str::random(10).'@gmail.com',
        //     'tgl_lahir' => Str::random(10),
        //     'password' => Hash::make('password'),
        // ]);


    }
}
