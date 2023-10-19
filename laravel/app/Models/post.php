<?php

namespace App\Models;

class post
{
    private static $blog_posts = [
    [
        "title" => "Blog Tulisan Alfatah",
        "slug" => "judul-tulisan-pertama",
        "author" => "Sholahuddin Alfatah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae asperiores autem, eos, nostrum quod quam sit voluptate voluptates id sint deserunt, reprehenderit eaque expedita. Sequi laboriosam voluptas facere voluptates, harum cumque nisi eius repellat porro necessitatibus sed nesciunt consequatur omnis sit at dolor in! Ab praesentium deserunt voluptates dolores, iusto laudantium saepe officiis consequuntur labore, corrupti, voluptas doloribus neque. Perspiciatis asperiores excepturi consequatur doloribus qui similique, provident debitis quod dicta rem? Consectetur, nam? Ab iure saepe dignissimos nemo consequuntur alias."
    ],
    [
        "title" => "Blog Tulisan Rahmad",
        "slug" => "judul-tulisan-kedua",
        "author" => "Rahmad Abdullah",
        "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nulla quo, nesciunt rerum saepe molestiae, similique, distinctio quis modi ipsam exercitationem quod aliquam quisquam rem porro tempora voluptate? Tempore, reprehenderit possimus facilis omnis autem aliquid vel voluptates voluptatibus ex animi nobis nihil incidunt ratione eius reiciendis provident magnam, numquam nisi perspiciatis! Quisquam, quis tempore hic nihil eligendi quasi accusamus. Nemo quo nobis blanditiis voluptate quaerat voluptas voluptatum voluptatem, odio natus. Ab perferendis quidem eveniet molestiae consectetur temporibus dolore deleniti ducimus, possimus quis ipsa vel doloremque debitis hic quibusdam quod. Vitae repellendus quod, labore placeat nesciunt cupiditate. Provident iste quisquam nisi voluptate?"
    ]
  ];

  public static function all()
  {
    return collect(self::$blog_posts);
  }


  public static function find($slug)
  {
    $posts = static::all();
    return $posts->firstWhere('slug', $slug);
    }

}
