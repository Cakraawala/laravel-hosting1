<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

class Post
// use HasFactory;
{
    private static $blog_post = [
        [
            'title' => 'Judul Pertama',
            'author' => 'Angger cakra',
            'slug' => 'judul-pertama',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Pariatur qui quaerat fuga dolorem eum
            officiis similique earum ratione architecto voluptatum nesciunt incidunt accusantium enim ipsum, corrupti eaque
            quia, rem, obcaecati necessitatibus aliquid sapiente iusto numquam perspiciatis? Fugiat modi assumenda placeat
            debitis hic error sint molestias! Id eos dignissimos cum expedita?'
        ],
        [
            'title' => 'Judul Kedua',
            'author' => 'Cakra wicaksono',
            'slug' => 'judul-kedua',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Pariatur qui quaerat fuga dolorem eum
            officiis similique earum ratione architecto voluptatum nesciunt incidunt accusantium enim ipsum, corrupti eaque
            quia, rem, obcaecati necessitatibus aliquid sapiente iusto numquam perspiciatis? Fugiat modi assumenda placeat
            debitis hic error sint molestias! Id eos dignissimos cum expedita?'
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_post);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
