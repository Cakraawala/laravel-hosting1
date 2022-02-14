@extends('dashboard.layouts.main')

@section('content')

<div class="container">
    <div class="row my-5 mx-2" style="text-align: justify">
        <div class="col-lg-8">
            <h1 class="mb-3 fs-2"> {{ $post->title}}</h1>

            <p>By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a>
                In <a href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>

            @if ($post->image)
                <div style="max-height: 350px; overflow:hidden;">
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3 mb-3">
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid">
            @endif



            <article class="my-3 fs-6">
            {!! $post->body !!}
           </article>



        <a href="/dashboard/posts" class="btn btn-secondary mt-4"><span data-feather="skip-back"></span> Back to Dashboard </a>
        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning mt-4"><span data-feather="edit-2"></span> Edit </a>
        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
            @csrf
            @method('delete')
                <button class="btn btn-danger mt-4"
                onclick="return confirm(' Are you sure to delete this post?')">
                    <span data-feather="trash-2"></span> Delete
                </button>
        </form>
        </div>
    </div>
</div>


@endsection
