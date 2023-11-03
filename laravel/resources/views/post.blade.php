@extends('layouts.main')

@section('container')


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1 class="mb-5">{{ $post->title }}</h1>

            <p>By. Sholahuddin Alfatah in  <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>

            {!! $post->body !!}

            <a href="/posts">Back to Posts</a>


        </div>
    </div>
</div>




    @endsection




