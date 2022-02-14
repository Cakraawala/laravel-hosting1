<?php

namespace App\Http\Controllers;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Eloquent\Builder;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $title ='';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;

        }

        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        return view('posts', [
            'title' => 'All posts' . $title,
            'active'=> 'posts',
            //'posts' => Post::all()
            //tambahkan with([])->latest agar menambahkan performa database (eager loading)
            'posts' => Post::latest()->filter(request(['search', 'category', 'author']))
            ->paginate(10)->withQueryString()
        ]);
    }

    public function show(Post $post){

        return view('post', [
            'title' => 'Single Post',
            'active'=> 'posts',
            'post' => $post
        ]);
    }
}
