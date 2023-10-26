<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

            // User::create([
            //     'name' => 'Sholahuddin Alfatah',
            //     'email' => 'alfatah1505@gmail.com',
            //     'password' => bcrypt('12345')
            // ]);

            // User::create([
            //     'name' => 'Rahmad Abdullah',
            //     'email' => 'rahmad@gmail.com',
            //     'password' => bcrypt('12345')
            // ]);

            \App\Models\User::factory(5)->create();

            Category::create([
                'name' => 'Web Programming',
                'slug' => 'web-programming'
            ]);

            Category::create([
                'name' => 'Personal',
                'slug' => 'personal'
            ]);

            Post::factory(20)->create();

            // Post::create([
            //     'title' => 'Judul Pertama',
            //     'slug' => 'judul-pertama',
            //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, placeat ex voluptas ad perferendis veniam explicabo, nesciunt ratione vero voluptates velit labore cum dignissimos. Dolor quia cum et nam beatae quam, sunt voluptatibus sequi animi fuga non pariatur numquam suscipit nostrum sit quos. Ab nulla, ipsum amet dicta, quibusdam possimus facere tempora laudantium fugiat, aliquam reiciendis neque voluptatibus iste at. Harum voluptates dolores earum magnam ipsam? Laboriosam incidunt iste perspiciatis quos odio accusamus architecto recusandae exercitationem sequi dolorum animi enim blanditiis qui totam, quod eum iure magnam expedita earum nam nostrum nesciunt nisi. Molestias velit sint tenetur deleniti maiores magnam!',
            //     'category_id' => 1,
            //     'user_id' => 1
            // ]);

            // Post::create([
            //     'title' => 'Judul Ke Dua',
            //     'slug' => 'judul-ke-dua',
            //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, placeat ex voluptas ad perferendis veniam explicabo, nesciunt ratione vero voluptates velit labore cum dignissimos. Dolor quia cum et nam beatae quam, sunt voluptatibus sequi animi fuga non pariatur numquam suscipit nostrum sit quos. Ab nulla, ipsum amet dicta, quibusdam possimus facere tempora laudantium fugiat, aliquam reiciendis neque voluptatibus iste at. Harum voluptates dolores earum magnam ipsam? Laboriosam incidunt iste perspiciatis quos odio accusamus architecto recusandae exercitationem sequi dolorum animi enim blanditiis qui totam, quod eum iure magnam expedita earum nam nostrum nesciunt nisi. Molestias velit sint tenetur deleniti maiores magnam!',
            //     'category_id' => 1,
            //     'user_id' => 1
            // ]);

            // Post::create([
            //     'title' => 'Judul Ke Tiga',
            //     'slug' => 'judul-ke-tiga',
            //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, placeat ex voluptas ad perferendis veniam explicabo, nesciunt ratione vero voluptates velit labore cum dignissimos. Dolor quia cum et nam beatae quam, sunt voluptatibus sequi animi fuga non pariatur numquam suscipit nostrum sit quos. Ab nulla, ipsum amet dicta, quibusdam possimus facere tempora laudantium fugiat, aliquam reiciendis neque voluptatibus iste at. Harum voluptates dolores earum magnam ipsam? Laboriosam incidunt iste perspiciatis quos odio accusamus architecto recusandae exercitationem sequi dolorum animi enim blanditiis qui totam, quod eum iure magnam expedita earum nam nostrum nesciunt nisi. Molestias velit sint tenetur deleniti maiores magnam!',
            //     'category_id' => 2,
            //     'user_id' => 1
            // ]);

            // Post::create([
            //     'title' => 'Judul Ke Empat',
            //     'slug' => 'judul-ke-empat',
            //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, placeat ex voluptas ad perferendis veniam explicabo, nesciunt ratione vero voluptates velit labore cum dignissimos. Dolor quia cum et nam beatae quam, sunt voluptatibus sequi animi fuga non pariatur numquam suscipit nostrum sit quos. Ab nulla, ipsum amet dicta, quibusdam possimus facere tempora laudantium fugiat, aliquam reiciendis neque voluptatibus iste at. Harum voluptates dolores earum magnam ipsam? Laboriosam incidunt iste perspiciatis quos odio accusamus architecto recusandae exercitationem sequi dolorum animi enim blanditiis qui totam, quod eum iure magnam expedita earum nam nostrum nesciunt nisi. Molestias velit sint tenetur deleniti maiores magnam!',
            //     'category_id' => 2,
            //     'user_id' => 2
            // ]);



    }
}
