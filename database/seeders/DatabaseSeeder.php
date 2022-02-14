<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(4)->create();
        User::create([
            'name' => 'Angger cakra',
            'username' => 'cakrawalaa',
            'email' => 'Angger@gmail.com',
            'password' => bcrypt('301005')
        ]);
        // User::create([
        //     'name' => 'cakrawala',
        //     'email' => 'Anggercakra@gmail.com',
        //     'password' => bcrypt('301005')
        // ]);

        Category::create([
            'name' => 'Universe',
            'slug' => 'universe'
        ]);

        Category::create([
            'name' => 'Beach',
            'slug' => 'beach'
        ]);
        Category::create([
            'name' => 'Islands',
            'slug' => 'islands'
        ]);

        Category::create([
            'name' => 'Ocean',
            'slug' => 'ocean'
        ]);
        Category::create([
            'name' => 'Tropic',
            'slug' => 'tropic'
        ]);

        Category::create([
            'name' => 'Sky',
            'slug' => 'sky'
        ]);
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Esports',
            'slug' => 'esports'
        ]);
        Category::create([
            'name' => 'Technology',
            'slug' => 'tech'
        ]);
        Category::create([
            'name' => 'Robot',
            'slug' => 'robot'
        ]);
        Category::create([
            'name' => 'Computer',
            'slug' => 'computer'
        ]);
        Category::create([
            'name' => 'Gadget',
            'slug' => 'gadget'
        ]);

        // Post::create([
        //     'title' => 'Judul pertama',
        //     'slug'=> 'judul-pertama',
        //     'excerpt'=> 'lorem ipsum dolor sit amet consectetur',
        //     'body' => ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia dolorum optio, repellendus maxime velit, quos est aperiam nobis beatae iure recusandae expedita unde quibusdam excepturi labore voluptatem illo. Sequi sint quae tempora ipsa sapiente pariatur obcaecati expedita ea doloremque aspernatur! Sapiente beatae sit, enim animi magnam a dicta. Nihil, dolor.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug'=> 'judul-ke-dua',
        //     'excerpt'=> 'lorem ipsum dolor sit amet consectetur',
        //     'body' => ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia dolorum optio, repellendus maxime velit, quos est aperiam nobis beatae iure recusandae expedita unde quibusdam excepturi labore voluptatem illo. Sequi sint quae tempora ipsa sapiente pariatur obcaecati expedita ea doloremque aspernatur! Sapiente beatae sit, enim animi magnam a dicta. Nihil, dolor.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug'=> 'judul-ke-tiga',
        //     'excerpt'=> 'lorem ipsum dolor sit amet consectetur',
        //     'body' => ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia dolorum optio, repellendus maxime velit, quos est aperiam nobis beatae iure recusandae expedita unde quibusdam excepturi labore voluptatem illo. Sequi sint quae tempora ipsa sapiente pariatur obcaecati expedita ea doloremque aspernatur! Sapiente beatae sit, enim animi magnam a dicta. Nihil, dolor.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
