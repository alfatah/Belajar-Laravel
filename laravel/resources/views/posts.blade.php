@extends('layouts.main')

@section('container')

@if ($posts->count())

    <div class="card mb-3">
        <img src="https://source.unsplash.com/random/?{{ $posts[0]->category->name }}" style="width:1100;height:600px; class="card-img-top">
        <div class="card-body text-center">
          <h3 class="card-title"><a href="/posts/{{ $posts[0]->title }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>

          <small class="text-muted">
          By. <a class="text-decoration-none" href="/authors/{{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> in  <a href="/categories/{{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a>
          {{ $posts[0]->created_at->diffForHumans() }}
          </small>

          <p class="card-text">{{ $posts[0]->excerpt }}</p>

          <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>

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

