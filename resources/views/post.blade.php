@extends('layouts.main')
@section('content')
<article>
    <h2> {{ $post->title}}</h2>
    <p>By. <a href="" class="text-decoration-none">{{ $post->author->name }}</a> <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>
    {!! $post->body !!}
</article>

<a href="/posts" class="d-block mt-3"> Kembali </a>
@endsection
