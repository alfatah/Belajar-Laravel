
@extends('layouts.main')

@section('container')

    <h1 class="mb-5">{{ $post->title }}</h1>

    <p>By. <a class="text-decoration-none" href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a><a href="/categories/{{ $post->category->slug }}" class="text-decoration-none"></a> in  <a class="text-decoration-none" href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>

    {!! $post->body !!}
    <br>
    <a href="/posts" class="text-decoration-none">Back to Posts</a>

    @endsection





