@extends('layouts.main')
@section('content')
    <h1 class="mb-5"> Post Categories</h1>
    <div class="container">
        <div class="row">

            @foreach ($categories as $category)
            <div class="col-md-4 mb-4 mt-4">
                <a class ="text-decoration-none text-light"href="/posts?category={{ $category->slug }}">
                <div class="card bg-dark text-white">

                    <img class= "card-img"src="https://source.unsplash.com/500x400?{{ $category->name }}" alt="{{ $category->name }}">

                    <div class="card-img-overlay d-flex align-items-center p-0">
                      <h5 class="card-title text-center flex-fill p-5" style ="background-color: rgba(0, 0, 0, 0.5)">{{ $category->name }}</h5>
                    </div>
                </a>
                </div>
            </div>
            @endforeach

        </div>
    </div>
@endsection

