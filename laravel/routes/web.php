<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "tittle" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "tittle" => "About",
        "name" => "Sholahuddin Alfatah",
        "email" => "alfatah1505@gmail.com",
        "image" => "alfatah.jpg"
    ]);
});



Route::get('/blog', function () {
    $blog_posts = [
    [
        "title" => "Blog Post Pertama",
        "slug" => "judul-post-pertama",
        "author" => "Sholahuddin Alfatah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae asperiores autem, eos, nostrum quod quam sit voluptate voluptates id sint deserunt, reprehenderit eaque expedita. Sequi laboriosam voluptas facere voluptates, harum cumque nisi eius repellat porro necessitatibus sed nesciunt consequatur omnis sit at dolor in! Ab praesentium deserunt voluptates dolores, iusto laudantium saepe officiis consequuntur labore, corrupti, voluptas doloribus neque. Perspiciatis asperiores excepturi consequatur doloribus qui similique, provident debitis quod dicta rem? Consectetur, nam? Ab iure saepe dignissimos nemo consequuntur alias."
    ],
    [
        "title" => "Blog Post Kedua",
        "slug" => "judul-post-kedua",
        "author" => "Rahmad Abdullah",
        "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nulla quo, nesciunt rerum saepe molestiae, similique, distinctio quis modi ipsam exercitationem quod aliquam quisquam rem porro tempora voluptate? Tempore, reprehenderit possimus facilis omnis autem aliquid vel voluptates voluptatibus ex animi nobis nihil incidunt ratione eius reiciendis provident magnam, numquam nisi perspiciatis! Quisquam, quis tempore hic nihil eligendi quasi accusamus. Nemo quo nobis blanditiis voluptate quaerat voluptas voluptatum voluptatem, odio natus. Ab perferendis quidem eveniet molestiae consectetur temporibus dolore deleniti ducimus, possimus quis ipsa vel doloremque debitis hic quibusdam quod. Vitae repellendus quod, labore placeat nesciunt cupiditate. Provident iste quisquam nisi voluptate?"
    ],
];
    return view('posts', [
        "tittle" => "Posts",
        "posts" => $blog_posts
    ]);
});

    
// halaman single post
Route::get('posts/{slug}', function($slug) {    $blog_posts = [
    [
        "title" => "Blog Post Pertama",
        "slug" => "judul-post-pertama",
        "author" => "Sholahuddin Alfatah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae asperiores autem, eos, nostrum quod quam sit voluptate voluptates id sint deserunt, reprehenderit eaque expedita. Sequi laboriosam voluptas facere voluptates, harum cumque nisi eius repellat porro necessitatibus sed nesciunt consequatur omnis sit at dolor in! Ab praesentium deserunt voluptates dolores, iusto laudantium saepe officiis consequuntur labore, corrupti, voluptas doloribus neque. Perspiciatis asperiores excepturi consequatur doloribus qui similique, provident debitis quod dicta rem? Consectetur, nam? Ab iure saepe dignissimos nemo consequuntur alias."
    ],
    [
        "title" => "Blog Post Kedua",
        "slug" => "judul-post-kedua",
        "author" => "Rahmad Abdullah",
        "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nulla quo, nesciunt rerum saepe molestiae, similique, distinctio quis modi ipsam exercitationem quod aliquam quisquam rem porro tempora voluptate? Tempore, reprehenderit possimus facilis omnis autem aliquid vel voluptates voluptatibus ex animi nobis nihil incidunt ratione eius reiciendis provident magnam, numquam nisi perspiciatis! Quisquam, quis tempore hic nihil eligendi quasi accusamus. Nemo quo nobis blanditiis voluptate quaerat voluptas voluptatum voluptatem, odio natus. Ab perferendis quidem eveniet molestiae consectetur temporibus dolore deleniti ducimus, possimus quis ipsa vel doloremque debitis hic quibusdam quod. Vitae repellendus quod, labore placeat nesciunt cupiditate. Provident iste quisquam nisi voluptate?"
    ],
];

$new_post = [];
foreach($blog_posts as $post) {
    if($post["slug"] === $slug ) {
        $new_post = $post;
    }
}

    return view('post', [
        "tittle" => "Single Post",
        "post" => $new_post
    ]);
});