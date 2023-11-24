-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 11:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfatah_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-21 19:36:22', '2023-11-21 19:36:22'),
(2, 'Web Design', 'web-design', '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(3, 'Personal', 'personal', '2023-11-21 19:36:23', '2023-11-21 19:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_19_095352_create_posts_table', 1),
(6, '2023_10_20_144122_create_categories_table', 1),
(7, '2023_11_23_175603_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Qui odit ratione ducimus perspiciatis.', 'harum-in-autem-sit-officiis-omnis', NULL, 'Qui molestiae iste non eos quia in perferendis ut. Nulla voluptas inventore sint quaerat harum cum. Rem accusamus magni eaque enim maiores. Voluptatibus ut minima iusto molestias sit.', '<p>Maxime nulla expedita cumque reiciendis. Minima voluptates totam expedita inventore est et. Voluptatem quis libero fuga maxime non aut atque. Unde quia dolores cum mollitia voluptatum non neque.</p><p>Ipsam dolor provident qui veniam qui occaecati labore et. Consectetur nulla sed repellat aut. Et perspiciatis aspernatur est omnis et consequuntur magni id.</p><p>Et hic exercitationem nemo veniam tempora quis velit. Rem ut tenetur quia eligendi cupiditate odio velit. Harum aut veniam necessitatibus odit aliquid.</p><p>Ab at eveniet nihil. Voluptas laudantium aliquid quo autem voluptate quaerat consectetur magnam. Id ipsum sunt sit quia. Similique dolorum quod nobis commodi unde et non.</p><p>Aut est sed facere laboriosam sequi non libero ut. Consequatur velit explicabo qui recusandae. Autem possimus quam et rem adipisci sed minima. Tempora occaecati dolorem numquam qui natus alias voluptatem. Et laudantium est officiis ea quidem animi maxime.</p>', NULL, '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(2, 2, 3, 'Consequatur expedita.', 'corrupti-ut-ipsam-molestiae-quo-delectus-nesciunt-et-reiciendis', NULL, 'Est veniam temporibus cumque sed in sunt. Neque quis aut autem iusto. Ad doloremque et at voluptas placeat dolor.', '<p>Repellendus voluptate iusto sequi occaecati aliquid officiis eius. Dolorum qui et iste nulla ullam. Omnis et unde quibusdam sed dolorem.</p><p>Et voluptatem doloremque ut omnis et nemo inventore. Impedit aut maxime sed earum sed impedit. Voluptatum eaque labore odit libero nihil voluptatum similique.</p><p>Quam dolores quae inventore doloremque sunt. Corporis sapiente modi animi illo. Et itaque aut sed incidunt adipisci ut.</p><p>Nesciunt explicabo ut ut blanditiis. Reprehenderit id quos veritatis sunt quis magni. Nisi est quia aut.</p><p>Vel quas blanditiis perferendis sint incidunt non sapiente. Occaecati ut sunt culpa qui pariatur corrupti. Et rerum tempora qui labore consequatur est illum.</p><p>Quaerat nostrum iusto sunt. Aut perferendis et ratione. In modi repudiandae sapiente.</p>', NULL, '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(3, 1, 1, 'Non tenetur ex deleniti.', 'delectus-voluptatem-velit-dolor', NULL, 'Mollitia quidem aut necessitatibus mollitia ipsa. Et cum harum rerum aperiam ex pariatur. Facere sit est ut omnis ullam.', '<p>Velit natus unde excepturi doloribus. Veniam illum quod doloremque eius quae rem vero voluptatibus. Veniam totam aperiam voluptate quae omnis. Delectus hic ab suscipit.</p><p>Natus sapiente perferendis incidunt et asperiores itaque. Aut inventore velit laudantium placeat aliquid. Voluptas asperiores iure sed. Pariatur eos architecto repellat et fugiat omnis.</p><p>Quasi neque beatae qui dolorem dolores doloremque ducimus. Voluptates et qui deserunt. Ut ea nesciunt in.</p><p>Natus necessitatibus illum provident non consequatur. Est ut quam beatae. Quae eum sint repellendus sed recusandae. Doloribus vero voluptas est quidem consequatur.</p><p>Et blanditiis est porro. Illum fugiat nesciunt est ipsum accusamus. Recusandae non repellendus beatae accusantium. Voluptas illum sequi eius officia libero magni. Illum molestiae et sapiente mollitia minus corporis ex ut.</p>', NULL, '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(4, 2, 1, 'Ut omnis molestias ipsam nobis nihil et.', 'ut-occaecati-fuga-recusandae-eligendi', NULL, 'Accusamus doloremque debitis dolorem earum aut. Iure omnis similique sed laboriosam rem. Nam rerum assumenda occaecati cupiditate consectetur sed perferendis laudantium. Libero dolores maxime reprehenderit nesciunt. Molestias maiores accusantium quod sint ullam ducimus quis omnis.', '<p>Vel in saepe qui quia blanditiis pariatur soluta. Quo labore exercitationem occaecati consequatur cum mollitia corporis quisquam. Officia perferendis quos vel aut optio adipisci ut tempora. Doloribus necessitatibus odio fuga beatae nihil doloribus architecto. Ab blanditiis iusto sed id non sunt.</p><p>Praesentium illum aliquid ratione unde rerum ipsam accusantium. Reiciendis et consequatur vel et molestiae iure impedit.</p><p>Voluptas ratione aliquid magnam facere. Qui porro voluptatem blanditiis eligendi.</p><p>Odit a et vitae asperiores eos totam vel. Accusamus nulla vel sunt ipsa nobis omnis itaque. Ut eum a molestias laborum quo. Eum fuga enim iusto et laboriosam quasi velit.</p><p>Facilis rerum et laboriosam. Aut similique est asperiores qui. Illo sint quas deserunt ut officia.</p><p>Eum porro ullam placeat unde aut possimus. Laboriosam alias distinctio maiores deserunt ut. Totam eos ut doloremque natus et ipsum est earum.</p><p>Molestias veritatis ipsum repudiandae eos commodi. Minus impedit atque soluta quia nobis commodi.</p><p>Ea ipsam consequatur quam praesentium vitae nostrum. Ab rerum recusandae ut non corrupti ea tenetur. Commodi provident earum deserunt non dolore aut. Sed sint nemo aliquam laudantium.</p><p>Fugit ut et est eos beatae fugiat qui. Sit dolor occaecati animi aut et. Voluptas itaque excepturi fugit aspernatur aut.</p>', NULL, '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(5, 2, 1, 'Consectetur consectetur rerum minus.', 'ullam-natus-ab-ea-adipisci-at', NULL, 'Voluptates dolorem pariatur consequatur beatae perspiciatis tenetur. Eum architecto voluptatem voluptates iure. Occaecati explicabo harum quia tenetur. Velit consequatur consequuntur molestiae facere doloremque omnis non.', '<p>Culpa et qui ullam possimus ut. Quia voluptatem nesciunt eveniet. Facilis accusamus iste dolorem tenetur.</p><p>Et cumque qui magni. Ab ut ullam sequi enim ut nam voluptas corporis. Voluptatibus quia qui velit ut est est dolores occaecati.</p><p>Deserunt nostrum sed dolor numquam eligendi eum. A eos facilis dignissimos saepe sunt aliquid. Commodi sed libero est eos culpa sint. Nihil ipsum dolorum ut vel quam aut temporibus inventore. Ut mollitia nisi vero quia quo rerum.</p><p>Distinctio ea eos laborum sint tempore. Impedit dolor et quae optio.</p><p>Voluptas quos enim voluptas et totam ipsam. Perspiciatis reiciendis quas dolor consequuntur consequatur dolorem reprehenderit. Impedit totam expedita occaecati quia iusto aut tempore.</p><p>Ut saepe laborum repellendus eum numquam. Est magnam hic fugit et velit. Rerum tempora est doloribus reiciendis dolores enim rerum.</p><p>Similique est quo ut earum. Molestias delectus quo dolorem facere ut. Autem dolorem id voluptatem. Eaque provident eaque fugiat voluptatem quo similique ullam officiis. Sit recusandae minima debitis ut magnam.</p><p>Sed laudantium non nulla illo exercitationem voluptatibus. Similique optio incidunt voluptas dignissimos maxime sed. Hic hic hic laborum sunt. Voluptatem omnis nobis quasi.</p><p>Quia quo quam maiores illo est aperiam. Nesciunt commodi delectus quia vitae veritatis eos sit. Quia voluptas non explicabo ratione reprehenderit at.</p><p>Aut incidunt a omnis accusantium voluptas aut aliquid recusandae. Nihil veritatis ipsam delectus accusantium. Qui autem vero molestiae at ipsam voluptas. Officia sit sed dolores aut. Cum explicabo vel nam minus nesciunt.</p>', NULL, '2023-11-21 19:36:23', '2023-11-21 19:36:23'),
(6, 2, 2, 'Tempora odit est.', 'blanditiis-aut-eos-et-corporis', NULL, 'Enim quia explicabo et sunt nam et necessitatibus. Id similique nisi quibusdam amet itaque aut ea. Nisi nihil similique debitis in molestiae accusantium sint.', '<p>Occaecati quam magnam aliquid. Id nostrum iure aut nam.</p><p>Recusandae consequatur sed libero sed. Ut sed voluptatibus similique quia. Explicabo dolores illum at sunt. Omnis quia eius ullam et reprehenderit optio quisquam.</p><p>Repellat architecto assumenda provident officiis nostrum pariatur. Magnam officia dignissimos voluptatem numquam. Maxime eaque architecto pariatur odio dolores aspernatur. Aspernatur non itaque libero aut. Quibusdam a quaerat eligendi.</p><p>Facilis deleniti laboriosam nulla voluptate eligendi et praesentium animi. Velit inventore mollitia qui provident ipsum. Sint alias et soluta qui tempore cum qui.</p><p>Optio assumenda voluptatem enim molestiae libero distinctio. Provident voluptas accusantium rerum voluptas quas voluptates. Quia reprehenderit sint quo iusto qui rerum non totam. Sunt voluptas sunt possimus ullam totam. Quidem fuga repellendus ut ratione.</p><p>Quisquam doloremque recusandae quos perspiciatis. Blanditiis quo natus impedit aut vero. Quam ut velit quisquam aut necessitatibus.</p><p>Aliquid et voluptatem voluptatem placeat beatae quos aspernatur minus. Quo sint ipsam atque amet. Nulla aut molestiae tempore laborum. Minus eos illum eum et soluta molestias.</p><p>Amet ipsam debitis omnis nemo laudantium expedita. Voluptas quia non velit rerum suscipit cum sit consequatur.</p><p>Ratione dolorem doloribus nobis. Ut distinctio pariatur aut qui et eligendi sed. Quia magnam consequuntur ea. Nesciunt ipsa eos ex occaecati et.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(7, 1, 3, 'Voluptatem quis ut quae veritatis.', 'minus-doloremque-magnam-eos-quaerat', NULL, 'Nobis consequatur est ut dignissimos ut impedit ipsum. Ex eveniet sit et quo enim impedit. Sit debitis saepe qui est est. Eum voluptatem dignissimos dolores tenetur earum omnis.', '<p>Dolorem eligendi et ad sit iste dolore. Adipisci animi iusto temporibus sequi autem. Et quia possimus et est sed non perspiciatis.</p><p>Autem officiis dolore omnis ut in. Nihil quibusdam quo laborum nobis perspiciatis fugiat adipisci. Pariatur sapiente autem optio ullam.</p><p>Occaecati delectus accusantium fuga reprehenderit nostrum aliquid et. Explicabo ab facere rerum dolorum. Culpa accusantium magni nihil similique placeat repellendus.</p><p>Voluptas temporibus quia et commodi. Ut alias maiores dolor mollitia et.</p><p>Quia voluptates iure molestiae ut debitis in aliquid. Eos unde doloribus quod. Non voluptatibus molestiae rerum est ratione aut quibusdam. Cumque sit eaque vel aspernatur est laudantium tenetur.</p><p>Facilis accusamus omnis ut. Numquam quo fugit sapiente est ipsam maxime amet. Blanditiis cupiditate et dolores nisi in fugiat quis. Minima dolorem ipsam itaque reprehenderit magnam.</p><p>Labore expedita provident vitae molestias fuga est id. Reiciendis alias temporibus illo ut voluptatibus non. Iusto numquam id consequatur repellat nesciunt quia eveniet aperiam. Consequatur dolore repudiandae sit iusto hic ea.</p><p>Quasi error debitis at quia consequuntur. Ducimus eos vel iusto labore illum animi voluptatibus. Culpa cum itaque expedita repudiandae.</p><p>Repellat culpa distinctio nam sit sit commodi non. Velit ea adipisci suscipit natus. Voluptatem et quis est libero aut perspiciatis eligendi.</p><p>Debitis cumque aut minima eaque quia. Consequatur voluptate omnis sequi non. Aut quibusdam suscipit rerum quia. Consequuntur ut blanditiis est dolor. Voluptas assumenda optio doloremque earum eos rem.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(8, 1, 3, 'Culpa expedita voluptas.', 'asperiores-officia-voluptate-harum-provident-dolorem', NULL, 'Perferendis molestiae nam officiis. At at quisquam quaerat. Rerum tempora assumenda omnis laborum. Doloribus rerum vel maiores laudantium facilis beatae.', '<p>Deserunt et blanditiis quia aliquam rem laudantium alias. Dolores iusto sunt beatae molestias soluta autem alias autem. Pariatur minima voluptate aut rerum a dolorum. Consectetur saepe inventore consequatur repellat aut qui veniam.</p><p>Aut voluptatibus exercitationem voluptatem nisi modi. Fugit eius necessitatibus deleniti et vel et autem quas. Commodi harum sit ab. Corporis odio veniam voluptatem neque voluptatibus.</p><p>Accusantium sit minima ex explicabo ipsum et est. Qui quia soluta pariatur ratione est. In debitis sit quis maxime. Illo nisi non error consequatur facilis quia.</p><p>Eos debitis excepturi autem. Et beatae aut voluptas. Omnis nobis expedita voluptate ut consequatur enim dolor.</p><p>Repellat ut ea magnam molestiae. Sunt dolores harum dolores ab perspiciatis repudiandae. Deserunt vitae repellat blanditiis maiores. Qui laboriosam numquam minima nulla aspernatur officia est.</p><p>Et quibusdam quae et est consequatur. Fuga id quia veritatis eius ut.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(9, 1, 3, 'Soluta voluptatem non corrupti necessitatibus quam.', 'qui-impedit-sunt-excepturi-saepe-cum', NULL, 'Vel inventore fugiat qui dignissimos deleniti quos. Veniam officiis consequatur enim minus unde id quam. Dignissimos dolorem qui nobis qui et ut. Dicta veniam aut earum tempore iure aut omnis.', '<p>Nam delectus iusto est quos sed. Reprehenderit ipsam provident voluptate eos. Sint totam eius expedita consectetur earum molestiae.</p><p>Molestias expedita molestias id et officiis alias totam. Rerum et et consequatur. Ipsa facere ut nemo.</p><p>Sint tempora nisi rem in. Iusto nihil consequatur exercitationem omnis. Architecto eveniet ullam enim voluptatibus minima sint est dignissimos.</p><p>Libero minus necessitatibus dolore vitae est aperiam eos. Minus tempore voluptate asperiores id architecto doloribus optio. Asperiores officiis porro quia amet magnam dolorem itaque.</p><p>Velit mollitia consequatur incidunt nihil sequi distinctio. Aut molestiae dicta culpa similique sint culpa. In ut quisquam modi repellendus aliquid ut. Velit quae accusamus rerum voluptates optio eaque est.</p><p>Ut debitis delectus voluptates dolorem est. Vel et minima omnis. Rerum assumenda nihil et eligendi repudiandae. Natus voluptatem quia veniam. Aliquam dignissimos eum molestiae illo facere.</p><p>Et omnis omnis aliquid amet in ut blanditiis. Quae voluptatem voluptatibus sequi velit natus ratione voluptas. Consequuntur necessitatibus tenetur qui quisquam vel id deserunt. Reprehenderit non non excepturi voluptas.</p><p>Pariatur est minima sed nihil occaecati quo quae qui. Molestiae quas officia sunt qui vero est. Eius doloremque iure velit non et ea.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(10, 2, 2, 'Voluptatum quo in neque voluptatem.', 'adipisci-voluptatibus-placeat-excepturi-fugit-repellat', NULL, 'Ipsum autem sunt aut beatae odit. Alias ut et quasi labore quam sint ea. Ut rerum est sequi inventore deleniti sint. Optio aut et eligendi asperiores.', '<p>Architecto quia blanditiis occaecati illum laborum soluta illo a. Quidem laudantium omnis nihil et sunt.</p><p>Rerum soluta quisquam corrupti magni incidunt eos. Ipsam consequuntur sapiente ut amet in. Magni excepturi quo labore. Et eius aut voluptatibus commodi.</p><p>Impedit itaque commodi neque deleniti vero quibusdam sapiente tempore. Quia et neque blanditiis nam alias ipsum. Eos aut quis mollitia itaque voluptas repellat id. Officia voluptatem ratione dolor dignissimos qui voluptas odio.</p><p>Autem dolores ex sunt blanditiis totam doloremque quis fuga. Voluptas qui molestiae vitae sit. Dolorem deserunt fugiat sit sed unde. Incidunt repellendus exercitationem ipsa neque ut qui provident.</p><p>Error magni sed id placeat. Error eos fugiat voluptate voluptates minus voluptas. Nulla voluptatum doloremque quasi vel.</p><p>Iure exercitationem ex non fugiat quae cumque earum. Voluptate ad delectus quidem nobis qui vel voluptate. Qui rerum inventore ratione iusto neque id et.</p><p>Quas distinctio sapiente velit reiciendis perspiciatis tempore. Qui voluptates iusto quae ducimus sunt. Neque et placeat exercitationem aut ad. Sed incidunt labore sunt vero nihil.</p><p>Distinctio earum ipsum alias consequatur architecto optio odio. Eum rem modi tempora dolor omnis ut. Corporis nostrum eum quis minima id. Odio officiis numquam qui at deserunt dicta enim.</p><p>Sunt iste eum temporibus. Accusamus voluptates amet architecto. Et quam saepe quo dolorem harum. Dolores esse quam in molestias exercitationem in dolorum.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(11, 2, 3, 'Tempora quidem magni mollitia qui.', 'dicta-et-voluptates-voluptatem-soluta', NULL, 'Molestiae illum dicta eligendi consectetur. At ut amet sunt accusamus. Necessitatibus inventore et et facere dolor. Dolores accusantium consequatur voluptatibus minus fugiat amet ut.', '<p>Vero deleniti porro sequi accusamus. Officiis aut officiis quis. Ut cumque natus voluptas dignissimos et optio sint. Cupiditate deleniti est exercitationem quia ut enim est.</p><p>Enim tenetur consequuntur ea voluptatibus quia rerum odit. Non ad quae possimus inventore doloribus. Quo eveniet dolorem placeat quia. Quasi fugit alias perferendis voluptatem.</p><p>Id dolor autem incidunt nihil at dignissimos. Occaecati aliquam adipisci voluptatum nisi. Eos ratione et molestiae. Officia architecto autem amet dolores delectus pariatur qui.</p><p>Eaque quibusdam deserunt delectus ea dolor. Perferendis doloribus voluptatem eos ut illum. Eos dolore impedit cupiditate eum aspernatur.</p><p>Aut accusantium hic voluptatem facilis. Voluptatum molestiae rerum quia ab. Rem placeat sit qui laboriosam aliquid. Ea quaerat voluptatem id laborum.</p><p>Aliquid voluptas rerum voluptatum amet excepturi quibusdam. Omnis doloribus odit et culpa quis at. Consequuntur dolorum dicta omnis quam in deserunt quam. Aut officia aspernatur ea.</p><p>Explicabo consectetur voluptatem nesciunt omnis voluptas. Ipsa ab a magni qui eius nihil nemo. Repellendus quo iure voluptas beatae dolorem necessitatibus quod. Ipsum esse excepturi suscipit iste aspernatur unde possimus.</p><p>Blanditiis et eum ea porro a. Id aspernatur in ut est accusamus laudantium eum. Ad eaque occaecati voluptas aliquam. Aspernatur quod est autem.</p><p>Libero eveniet sint qui omnis iure. Optio dignissimos consequatur error. Exercitationem est facere voluptas asperiores in qui. Accusantium cupiditate est optio.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(12, 2, 1, 'Odit ut repudiandae.', 'alias-ipsam-ratione-sit-molestias-eveniet-sit-ducimus', NULL, 'Aut voluptatem sed fugit repellat est. Voluptates quia earum velit. Vel sit pariatur est velit quae aut voluptatem.', '<p>Recusandae delectus eos sed aliquid temporibus enim hic. Sequi laudantium voluptatibus dolore exercitationem. Excepturi amet nisi enim qui voluptatem.</p><p>Perferendis excepturi tempora expedita voluptatem assumenda. Quisquam saepe inventore rerum sed dolor qui voluptates. Officiis impedit sunt saepe non quibusdam eos.</p><p>Occaecati odio quo recusandae modi neque. Labore tempora commodi dolor velit eveniet facere amet quo.</p><p>Nemo rerum quos reprehenderit quibusdam maiores veritatis. Voluptas et et sint inventore eveniet facere sunt. Quia numquam odit tempore sunt saepe sit delectus.</p><p>Pariatur distinctio non et debitis fugiat quia. Architecto architecto voluptatem dolorem ut. Est aut occaecati sint eaque. Ut laudantium alias explicabo.</p><p>Non non voluptas cum vel odit eveniet. Rerum quidem maiores aut occaecati illo natus laborum unde. Voluptatum laudantium debitis quidem dolores veniam veritatis. Et eum qui quia labore.</p><p>Rem officiis vel eligendi illo tenetur expedita eum. Quam praesentium quam ut iusto distinctio quaerat. Dolorem non occaecati optio non est.</p><p>Accusantium assumenda quaerat itaque qui et. Maxime est harum ut quod quis ipsa aliquam ipsam. Error dolore itaque aperiam et quaerat voluptate maxime. Molestiae cum omnis ut quis id repellendus vel.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(13, 2, 1, 'Molestias provident nulla.', 'eveniet-minus-sed-amet-ut', NULL, 'Modi architecto dignissimos est et. Omnis iste sunt molestias sit voluptas dolor. Delectus aut repellat iure qui est. Consequatur repudiandae ad necessitatibus consequatur laboriosam et culpa.', '<p>Beatae rem omnis voluptatem sit eveniet. Eos aliquid quaerat qui nihil ut aliquid. Ducimus esse in quia aut aut. Sunt eos quia reprehenderit fuga magni.</p><p>Eos perspiciatis laborum facere quidem ullam. Qui est velit unde aspernatur amet delectus. Deleniti tempora harum labore vitae maxime non.</p><p>Inventore voluptatem voluptatem et odio perferendis nesciunt sit. Ipsam ut non et sed non rerum quod. Voluptas sit corrupti totam aut. Ut architecto est perspiciatis ratione velit.</p><p>Eum debitis ea labore ex. Quisquam provident pariatur et ea iste molestias. Voluptatibus consequuntur debitis excepturi sint nihil iure. Rerum numquam esse error sequi in. Corporis est rerum non maxime.</p><p>Temporibus ea voluptatem in molestias. Voluptatem in sed dolores esse delectus eaque et ut. Voluptates voluptatem cumque beatae qui ab quaerat maiores. Nemo neque quam sunt vel ex quis natus.</p><p>Quia voluptate quas laboriosam. Qui voluptatum et esse esse deserunt minus rerum officia. Eos perferendis porro qui tempora distinctio autem iusto.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(14, 2, 2, 'Ut voluptatem maxime voluptates et aut dicta.', 'ullam-vero-velit-quae-qui-impedit-alias', NULL, 'Iusto exercitationem qui maiores qui quaerat. Illum et sed est vero consequatur pariatur in. Quos voluptatem nisi quasi ut et quia ut non. Nemo et et veniam quidem ut nostrum. Itaque sit dicta voluptatum aut ipsam illo unde.', '<p>Iure blanditiis asperiores ratione neque officiis rerum. Autem ut quis vero mollitia impedit. Rerum blanditiis accusantium mollitia et ut. Et voluptates saepe dolores et quaerat architecto.</p><p>Ad atque eos cumque voluptatem impedit. Est itaque eligendi id velit nihil commodi et laboriosam. Ullam nobis labore voluptate et recusandae voluptatem libero. Quasi sit sit perferendis quia.</p><p>Sequi enim aut perferendis nihil unde voluptas officiis. Facilis dolor corrupti iste ut et. Sit assumenda dolorem a nulla aut culpa recusandae. Et amet vel eligendi nobis eius. Magnam porro dignissimos laboriosam magnam aut.</p><p>In distinctio amet sed sit quisquam ut. Non enim rerum omnis iure nisi qui dolor amet. Doloremque delectus qui vel. Quaerat dolor est qui nihil dolorem sunt.</p><p>Aut modi et ab similique qui et qui. Eveniet officia consequuntur at sunt possimus. Dolor qui ut et ut reprehenderit voluptate.</p><p>Earum eaque veritatis non porro. Quisquam eum ad non ducimus harum animi sed. Eum odio fugiat aliquid.</p>', NULL, '2023-11-21 19:36:24', '2023-11-21 19:36:24'),
(15, 2, 2, 'Amet aut sed totam.', 'ipsum-amet-quia-beatae', NULL, 'Voluptatem quod assumenda voluptatem dolorem inventore voluptas. Accusamus ut quae incidunt aliquam. Eligendi modi enim sit. Voluptates aspernatur natus in quia non non.', '<p>Aliquam pariatur voluptates consequatur perspiciatis velit eos. Ut incidunt quaerat necessitatibus. Qui vel laboriosam illum. Incidunt amet blanditiis asperiores nulla eius quam. Ea totam eligendi ut repellat cupiditate necessitatibus.</p><p>Qui adipisci unde corrupti ducimus. Dicta deleniti ex amet esse dolore.</p><p>Vel aliquid sapiente quod consectetur laudantium. At ea qui corrupti quam asperiores blanditiis voluptatem. Facilis nemo similique repudiandae totam aperiam.</p><p>Quae sunt soluta nisi. Omnis ipsa magni quia deleniti ipsa.</p><p>Et enim minima illo quisquam nesciunt. Sit facilis in illum aut sint similique. Optio debitis possimus fugiat omnis. Voluptatem consequatur officiis quia odio qui laborum.</p><p>Quisquam perspiciatis voluptate voluptate. Ad est rerum ut perferendis. Harum sint et odio et fugit. Vel fugiat iste ut eum.</p><p>Neque repellat sunt aspernatur nostrum ut sunt quod. Excepturi quae harum aliquid laborum. Neque culpa adipisci debitis quia.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(16, 1, 3, 'Et est quia aut.', 'et-earum-ut-veritatis-deserunt-minus-vitae-aperiam-nesciunt', NULL, 'Est exercitationem blanditiis aut debitis soluta atque a in. Itaque dolorum et exercitationem quod voluptas nulla qui error. Porro qui praesentium iure laudantium at. Sint ut ea commodi possimus. Dolorem et accusamus beatae quia architecto natus.', '<p>Omnis enim labore sapiente saepe. Omnis aut ut dolor harum ullam est in. Rem quia doloribus corrupti magnam non distinctio voluptas odit.</p><p>Sit assumenda saepe nesciunt dolores. In quos inventore nobis ea commodi omnis quae. Et in beatae quis consequatur. Modi distinctio rerum et id nihil minima architecto.</p><p>Excepturi numquam fugiat culpa dolore blanditiis. Mollitia reiciendis eos repudiandae voluptatem quae. Fugiat corporis voluptates molestiae alias sint non odit.</p><p>Laboriosam et voluptas amet sunt omnis quas quas. Quia praesentium laboriosam reiciendis dignissimos. Aliquam aut iusto expedita veritatis velit.</p><p>Dolores et perspiciatis delectus in labore dolor rerum. Fuga excepturi voluptate eum.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(17, 1, 3, 'Blanditiis dolores.', 'ex-ipsa-excepturi-eum-placeat-repudiandae-numquam', NULL, 'Non sint reprehenderit officia voluptas sint veritatis adipisci. Et debitis in porro et optio commodi. Aliquid at minus aut excepturi qui corporis et enim. Fugit ipsa deleniti exercitationem at.', '<p>Officiis id ab nihil ab sunt ut. Cum dolor qui modi quia.</p><p>Quos maxime perspiciatis voluptatem eaque reprehenderit exercitationem nisi. Molestiae doloribus voluptatem et cupiditate omnis. Consequatur eum et eos consequuntur perspiciatis. Nobis nostrum nemo voluptatum velit. Corrupti et eos dolorem libero architecto eligendi cumque.</p><p>Molestiae blanditiis sit aliquid quas et. Veniam incidunt id vero quod quaerat voluptas quod. Atque nihil est voluptatem consectetur est commodi.</p><p>Non inventore natus qui similique laborum sapiente. Rerum veritatis ut illum. Unde dignissimos consequatur earum ut pariatur sit nulla.</p><p>Accusamus corrupti voluptatem rem sed ut. Voluptatibus officia deleniti vero voluptatem velit nostrum doloribus. Error exercitationem rerum labore beatae voluptates. Iste repudiandae non non soluta.</p><p>In illum eos repudiandae eaque numquam voluptatem commodi nobis. Odio rerum quidem eligendi id sapiente nemo alias. Similique quo sapiente laudantium nostrum.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(18, 1, 2, 'Sit et laborum aut inventore quia ipsam molestias laudantium fuga ducimus tempore.', 'at-eaque-omnis-saepe-et-officiis-voluptatem-qui', NULL, 'Corrupti quia asperiores sint rem dolore. Sit ad voluptate earum adipisci beatae recusandae quis et. Deserunt nemo eum eligendi veniam suscipit. Asperiores ad dolorum officia omnis.', '<p>Animi sit corrupti similique quae totam et occaecati. Et sit sed et. Voluptates facere ipsa dolore maxime voluptate qui. Assumenda dolorum est illo harum.</p><p>Error perspiciatis corrupti qui ut. Nam adipisci quibusdam aut esse amet autem ut. Excepturi eveniet sint suscipit harum harum nostrum. Harum beatae earum ad doloremque nostrum.</p><p>Harum vel rerum nulla ad ratione. Sed ab in explicabo rerum itaque voluptatem. Ratione beatae commodi placeat dolorum itaque.</p><p>Molestiae quod error eaque aliquid quis et quidem. Ad consequatur temporibus molestiae repudiandae molestiae inventore ut. Accusamus nesciunt tempora sapiente et quis dicta. Assumenda vel blanditiis sequi et sint ipsa rerum. Labore voluptatem minima rerum nostrum saepe debitis molestias.</p><p>Hic facilis est vel necessitatibus est optio iste. Temporibus numquam eos consequuntur autem similique labore non. Ut qui vel neque consequatur.</p><p>Omnis voluptas exercitationem velit expedita minus alias. Exercitationem quia quia consequatur dolorem eaque. Et ut sapiente esse est distinctio magni. Quis quis voluptatem quia alias quisquam.</p><p>Exercitationem autem sit et maxime. Perferendis deleniti velit consequatur nostrum. Sit officiis cumque at aut quod accusantium ducimus. Nemo voluptatem hic debitis quo in occaecati.</p><p>Tempore animi molestias odio dolore doloribus atque. Maiores enim itaque exercitationem beatae quae.</p><p>Corporis sunt amet quis qui. Porro consectetur eos earum tenetur voluptatum ex ipsam odio. Consequatur laudantium voluptas rerum et sit a et.</p><p>Deleniti sit error ut. Ut iste atque rerum et culpa unde et facilis.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(19, 2, 1, 'A quos.', 'voluptatibus-voluptas-est-eveniet-qui', NULL, 'Recusandae error in et fugiat et. Error ut voluptas autem iusto numquam. Consequatur nobis quis et et. Quis et et voluptatum et rem rem.', '<p>Vel saepe vel sit odio et eum sit vero. Accusantium asperiores fugit iste reprehenderit aliquam voluptate.</p><p>Sit et aut repellendus libero distinctio quisquam a. Quos et ipsam deleniti. Perspiciatis pariatur voluptas culpa quidem illum consectetur. Alias quaerat delectus blanditiis consectetur vel aut. Maiores eligendi sed excepturi vel nemo.</p><p>Dicta voluptates commodi ducimus quam est. Error debitis eligendi aut rerum labore et expedita. Aut quia perspiciatis delectus expedita sit.</p><p>Eaque autem reiciendis ut ea modi assumenda. Sequi qui quia perspiciatis temporibus ut saepe. Iure ipsum consequatur exercitationem eius voluptatem asperiores aut.</p><p>Vel incidunt aspernatur nihil provident dolorem cupiditate. Ut omnis consequatur culpa et dolor molestiae. Quod numquam est totam nulla aliquid facilis.</p><p>Odit ex sed eum fugiat sit reprehenderit. Autem numquam inventore sit error tempora vero. Commodi est ut quod qui dolorem.</p><p>Itaque pariatur ullam quidem enim praesentium ut nihil. Commodi nesciunt ratione sunt quae ipsa doloribus. Ut temporibus facere vel animi optio omnis. Consequatur magnam soluta et perferendis libero est similique. Molestiae sed sunt aliquam voluptates.</p><p>Minus cupiditate nisi maxime officiis nobis. Aut et qui iure sint eum officiis voluptatem.</p><p>Aut est earum ullam recusandae. Earum magni possimus itaque quia et. Totam atque eum qui omnis aut assumenda est.</p><p>Officia esse quis reiciendis iste dicta mollitia. Et fuga magni iste non et. Sed debitis explicabo laborum voluptatem architecto rerum enim. Minus sit non est facere molestiae ut voluptatem. Deleniti pariatur pariatur cum in.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(20, 2, 2, 'Voluptatem cum est.', 'ipsum-voluptate-ut-tempore-recusandae-maiores-placeat-nulla', NULL, 'Libero rerum placeat rerum esse ut. Praesentium ad rem rerum quasi atque at doloremque corporis. Et rem corrupti non odio.', '<p>Quisquam modi rerum excepturi et quidem ratione officiis. Id nemo libero modi. In et voluptates voluptatem repudiandae sed voluptatem.</p><p>Pariatur voluptas ipsa possimus at. Omnis modi fugiat dolorum provident. Aliquam non deserunt et nostrum voluptate. Illum voluptate quia hic rerum.</p><p>Modi libero veritatis porro nisi ad sequi natus architecto. Optio adipisci quae ipsam ad ut sint architecto ipsam. In non ut dicta in vel non. Laudantium et exercitationem voluptatibus facere.</p><p>Ut consequatur qui a officia. Est odit est et nemo quos. Provident omnis dignissimos eius pariatur quibusdam vel eligendi necessitatibus.</p><p>Modi dolore qui placeat quia et quia. Eum alias architecto nam animi in ut. Dolorum fuga quo quasi qui. Velit et autem repellendus ipsa illo aperiam dolore.</p><p>Repellendus eius commodi nisi. Odio culpa voluptatem enim modi. Aut ut sed eos temporibus. Quam ut possimus facilis unde fugit voluptas. Voluptatum autem provident illo enim dignissimos.</p><p>Qui veritatis nihil possimus eius quaerat vero. Et commodi enim est eos. Velit harum consequuntur consequatur accusantium dolorum provident sapiente.</p><p>Magnam id consequatur ea recusandae nobis aperiam. Quos id eum consequatur consequatur reiciendis et numquam. Atque vitae in sed aut perferendis. Et aliquid accusamus est aliquid quo tempora quasi mollitia.</p><p>Eos rerum quia molestiae tempore ut natus. Deserunt iste aperiam qui voluptatum eveniet voluptas enim id. Sed alias quia voluptatem debitis reiciendis est ad. Aut quia deleniti impedit ut cum.</p><p>Molestias possimus sit magnam ratione necessitatibus expedita. Quaerat eligendi minus et est aut quaerat et. Sed delectus laudantium qui nostrum ut ducimus rerum. Laboriosam similique inventore placeat qui.</p>', NULL, '2023-11-21 19:36:25', '2023-11-21 19:36:25'),
(26, 1, 1, 'wkwkwkw wkwkwkw wkwkwk', 'wkwkwkw-wkwkwkw-wkwkwk', 'post-images/CXsfyW5FzrLoQVljEbm1I0s63iQexwApigTXcCW2.png', 'wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw', '<div>wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw wkwkw</div>', NULL, '2023-11-23 00:52:06', '2023-11-24 03:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Sholahuddin Alfatah', 'alfatah', 'alfatah1505@gmail.com', NULL, '$2y$10$v6ioKm0AUNKJqmoWJN11c.lZ6qzlZnOZ1VnzRYz9P5ZJ.l8F9cM6y', NULL, '2023-11-21 19:36:20', '2023-11-21 19:36:20', 1),
(2, 'Patricia Sudiati', 'prastuti.gada', 'adiarja.hartati@gmail.com', '2023-11-21 19:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cHaCyREFDGys9BJ36cjGOAu2Qx9nhYzNOyGzBoiFvKIOiYj7Gsf5wxnwM6hU', '2023-11-21 19:36:22', '2023-11-21 19:36:22', 0),
(3, 'Koko Waluyo Mandala S.Pd', 'pradipta.nasrullah', 'kawaca03@example.org', '2023-11-21 19:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dD8hNMV3Cf', '2023-11-21 19:36:22', '2023-11-21 19:36:22', 0),
(4, 'Daniswara Lurhur Jailani S.E.I', 'fujiati.wisnu', 'najib.rahmawati@example.net', '2023-11-21 19:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZM2RKoTGyy', '2023-11-21 19:36:22', '2023-11-21 19:36:22', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
