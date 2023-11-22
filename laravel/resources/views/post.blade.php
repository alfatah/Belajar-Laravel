@extends('layouts.main')

@section('container')


<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <p>By. <a class="text-decoration-none" href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a> in  <a class="text-decoration-none" href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>

            @if ($post->image)
            <div style="max-height: 350px; overflow:hidden">
                <img src="{{ asset('storage/' . $post->image) }}"  class="img-fluid" alt="{{ $post->category->name }}">
            </div>
            @else
            <img src="https://source.unsplash.com/random/1200x700/?{{ $post->category->name }}"  class="img-fluid" alt="{{ $post->category->name }}">
            @endif

            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>


            <a href="/posts" class="text-decoration-none">Back to Posts</a>


        </div>
    </div>
</div>




    @endsection




