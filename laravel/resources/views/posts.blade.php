@extends('layouts.main')

@section('container')

@if ($posts->count())

    <div class="card mb-3">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h3 class="card-title">{{ $posts[0]->title }}</h3>
          <p>By. <a class="text-decoration-none" href="/authors/{{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> in  <a href="/categories/{{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a></p>
          <p class="card-text">{{ $posts[0]->excerpt }}</p>
          <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
        </div>
      </div>

@else

      <p class="text-center fs-4">No post found.</p>

@endif

    <h1 class="mb-5">{{ $title }}</h1>

    @foreach ( $posts as $post )
    <article class="mb-5 border-bottom pb-4">
        <h2>
            <a href="/posts/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a>
        </h2>
            <p>By. <a class="text-decoration-none" href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> in  <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>

        <p>{!! $post->excerpt !!}</p>

        <a class="text-decoration-none" href="/posts/{{ $post->slug }}">Read more..</a>


    </article>
    @endforeach

@endsection

