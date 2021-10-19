<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

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
         
         \App\Models\Role::factory(10)->create();
         
        // DB::table('users')->insert([
        //     'Name' => Str::random(10),
        //     'email' => Str::random(10).'@gmail.com',
        //     'tgl_lahir' => Str::random(10),
        //     'password' => Hash::make('password'),
        // ]);


    }
}
