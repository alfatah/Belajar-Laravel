-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 03:52 AM
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
(1, 'Web Programming', 'web-programming', '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(2, 'Web Design', 'web-design', '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(3, 'Personal', 'personal', '2023-11-04 09:10:11', '2023-11-04 09:10:11');

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
(6, '2023_10_20_144122_create_categories_table', 1);

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
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Repellat voluptatum fuga perferendis neque.', 'minima-reiciendis-illum-maxime', 'Non a dolores exercitationem sunt vel voluptatibus et. Non molestiae aut animi eaque et necessitatibus maxime. Sit deserunt maiores provident aut quam cupiditate odit consequatur.', '<p>Rerum qui porro adipisci nostrum et eligendi impedit. Eaque eos aut culpa qui. Ratione dolor nisi dolores nesciunt et in praesentium.</p><p>Quia ut natus dolores illum ullam ipsa et. Doloremque vero eveniet fugit illum aliquam voluptatem quia. Similique molestiae ab voluptas voluptatem sunt totam eveniet.</p><p>Fugit cupiditate architecto et. Molestias qui totam distinctio voluptas quibusdam hic fugiat. Ut necessitatibus aspernatur laboriosam dolores laboriosam quia. Reiciendis aut debitis aliquid magni.</p><p>Ab rerum dolor nihil. Sunt corrupti aliquid quo nesciunt adipisci labore quia. Rerum impedit deleniti quia rerum. Quia ipsam placeat quis quaerat dolorum itaque dicta. Consequatur vel sunt qui.</p><p>Aperiam cumque ut eaque quos. Ducimus omnis aut id voluptatum amet in sint. Libero impedit facilis ab consequatur.</p><p>Occaecati dolores fugiat et debitis consequatur eveniet. Voluptas occaecati est labore dolorem atque. Molestiae ab eum eum autem. Inventore amet asperiores dolor reiciendis est id dolores tempore.</p><p>Voluptas illo harum assumenda fugiat. Cum perspiciatis rerum ipsam neque reprehenderit accusamus velit minima. Ut tempore eum itaque. Sed blanditiis consequatur sit.</p>', NULL, '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(2, 1, 3, 'Nesciunt dignissimos consequuntur at est facilis.', 'est-delectus-dolore-voluptatem-mollitia', 'Quos amet eveniet doloremque ea velit. Minima inventore modi dolore minus.', '<p>Blanditiis enim id officiis eos nesciunt. Distinctio non magnam nesciunt recusandae saepe esse. Deserunt sint qui blanditiis.</p><p>Iste optio amet ut dolores autem veritatis laboriosam. Nihil assumenda et in quam. Blanditiis rerum magnam provident amet dolores debitis et. Nemo quo vitae quia non odio minus eum.</p><p>Cupiditate officia vero eos ratione. Iste enim voluptatem voluptas architecto omnis odit. Non debitis non et voluptas dolorem velit. Tempora eius est officiis non ex corrupti.</p><p>Ea amet eveniet quaerat cupiditate possimus enim ut ut. Laboriosam perspiciatis id ut autem. Est velit qui exercitationem dolorem tenetur dolor. Laboriosam debitis eos ut reprehenderit saepe quaerat.</p><p>Quod sint qui eligendi ut et perferendis. Pariatur et pariatur facere quae quia est provident. Ducimus aut et debitis.</p><p>A qui consequatur mollitia minus sunt. Et cupiditate magni sit odit alias expedita est. Aut harum officia laudantium animi et. Voluptatibus dolorem nobis ea nulla delectus deleniti deleniti voluptas.</p><p>Occaecati sequi quo laborum. Et quam ut officiis exercitationem perferendis.</p><p>Beatae perspiciatis quam placeat ut facere sed. Rerum eos rerum enim fugit laborum. Hic nesciunt sequi quod aspernatur doloribus. Veniam voluptatem et necessitatibus ut rem magni neque. Vel quia itaque non rerum.</p><p>Nobis iste est consequatur ad deserunt. Et beatae nemo tenetur tempora. Architecto ut praesentium aut. In unde animi culpa. Omnis natus fugit atque sint nostrum incidunt.</p>', NULL, '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(3, 2, 3, 'Accusantium sunt unde dolorem laudantium at.', 'qui-eligendi-ratione-cumque-ab-recusandae', 'Qui quis voluptas ad laboriosam omnis ratione. Nemo deserunt nam incidunt quidem sit nesciunt iste. Sit ea esse in maxime fugiat. Officiis vitae expedita veniam.', '<p>Illum dolores fuga asperiores minima consequatur alias provident quis. Deserunt quasi quam reiciendis adipisci sint distinctio aut earum. Id eos similique nemo.</p><p>Veritatis ipsum voluptatem culpa corrupti. Repellendus ut eum qui officiis. Repudiandae sit reprehenderit sed dolores. Aut voluptates expedita sit omnis molestiae non. Cumque molestias asperiores qui magnam molestiae mollitia.</p><p>Voluptas et id quia veritatis totam neque. Corrupti mollitia quia enim asperiores labore. Quod voluptatum molestiae est qui dicta.</p><p>Qui dolore occaecati quis enim qui. Nisi occaecati qui nulla dolor. Voluptatem beatae quaerat mollitia nisi id officiis maxime exercitationem.</p><p>Commodi vel distinctio officia quis occaecati. Qui ea aut veniam est. Iste laboriosam blanditiis in mollitia. Accusamus labore distinctio officia aliquid.</p><p>Reprehenderit sit officiis mollitia illum molestias delectus libero. Eum ab iusto in ea rerum itaque voluptates sunt. Hic ut dicta et est rerum eaque.</p><p>Consequatur molestiae cum aliquam sunt id tenetur. Ipsum minus ullam recusandae consequatur. Aliquid est rerum atque est libero maiores eos corrupti.</p><p>Porro perspiciatis consequuntur et quaerat. Sunt dolor animi delectus inventore. Ut ut culpa aut excepturi. Temporibus eveniet est veritatis natus magni rem.</p><p>Iste nesciunt corrupti autem autem et. Laudantium et sequi magnam nostrum. Dolorem enim sed beatae. Odio quis nihil nulla. Nulla provident praesentium ut sapiente.</p><p>Repellat expedita vel sint ullam. Reprehenderit et voluptas officia id vel a voluptas. Praesentium itaque rem et ipsa. Voluptas aut in veniam.</p>', NULL, '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(4, 2, 3, 'Et repellendus quis nisi corporis vitae cumque.', 'similique-et-sunt-aliquam', 'Vel natus et dolorum quo. Veniam optio voluptas quas quia. Omnis delectus totam dolorum et eum qui ea. Voluptatum est error et sunt qui mollitia.', '<p>Qui eos voluptas quia quaerat ipsum alias neque. Voluptas quaerat ut molestiae nobis quae quod.</p><p>Veritatis et hic eos harum labore architecto. Cum quia officia aut et explicabo. Harum nisi adipisci quis ea maxime omnis.</p><p>Magni quasi labore iusto quis eos architecto eum. Et aut molestiae illo architecto iusto. Voluptas quis et deleniti veniam dolor. Iure doloremque facilis at quo repudiandae facere dolor.</p><p>Est temporibus dolores architecto quibusdam omnis. Corporis sed et accusantium eius et. Fuga esse non temporibus veritatis dignissimos nisi.</p><p>Voluptatibus aspernatur ut sunt dolores. Fuga aut facere et architecto. Esse ducimus similique voluptatem numquam temporibus.</p><p>In impedit officiis a facilis dolore. Voluptas et autem deleniti doloribus. Nemo quo reprehenderit atque nulla rerum.</p><p>Sunt molestias ex ex et. Asperiores qui molestias et officia at rerum soluta deleniti. Blanditiis tempora ipsum voluptate quia numquam aut inventore. Et non impedit facilis nisi. Qui deserunt et qui non.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(5, 2, 3, 'Quo aliquam vel.', 'tenetur-officiis-nihil-qui-facere-in-natus-esse-ut', 'Non soluta rerum distinctio in dolor tenetur earum. Omnis excepturi consequatur consequatur. Sunt modi omnis qui dolorum repellat mollitia vitae. Amet in ipsa cupiditate consequatur explicabo et nostrum.', '<p>At distinctio et et animi. Laboriosam maxime rerum laborum vel quae est. Enim dolorum id quisquam.</p><p>Sed quam et suscipit. Dolorum repudiandae nihil quia. Inventore quod corporis est ipsam et culpa repellat. Id nostrum deserunt eum perferendis ducimus.</p><p>Praesentium officiis tempore assumenda repellat veniam autem. Cumque laboriosam sint qui totam ut totam. Ipsum voluptatem error expedita nobis corrupti commodi. Et quia eum debitis quo laborum sit.</p><p>Alias repudiandae voluptatem aut doloremque qui architecto voluptates odio. Qui molestias et illo et. Nobis corporis exercitationem ut temporibus unde. Veritatis amet autem omnis consequuntur omnis aliquid fugit temporibus.</p><p>Vel est mollitia laborum esse dolor. Aliquid est assumenda in eum cumque quis. Aliquid qui non vero voluptas.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(6, 1, 3, 'Ipsam voluptate ea voluptate praesentium totam.', 'natus-nihil-vel-nobis-dolor-aut', 'Hic est dolore perferendis maiores quos voluptatem unde. Explicabo harum fugit nam reprehenderit voluptas assumenda. Ea voluptatem nam minima libero.', '<p>Doloremque libero perspiciatis rerum quidem laboriosam iure. Quis pariatur qui ducimus voluptatem modi id nihil. Nulla consequatur nostrum ut quo iure neque enim. In suscipit suscipit molestiae consequuntur dolor corporis repellat.</p><p>Minus corporis nulla eos aperiam excepturi fuga sunt. Sit repellendus deserunt vitae tempora enim inventore quae pariatur. Veniam voluptates ratione voluptas ratione dolore velit et sunt. Dignissimos facere qui quos quas deleniti placeat.</p><p>Est voluptas cupiditate delectus. Corporis ullam nesciunt consectetur. In ea nesciunt labore ipsum omnis. Totam aut eum harum.</p><p>Sit voluptatibus eaque distinctio non unde voluptates error. Eaque voluptate totam ipsam voluptatibus aliquid.</p><p>Dolor temporibus aut error sit. Nemo consectetur sed quis eos nobis. Nesciunt adipisci repellat quo ut consequuntur. Sunt suscipit dolorem tenetur est ratione corrupti. Dolor repudiandae quis molestias reprehenderit ad.</p><p>Beatae autem vero sit voluptas eum. Eveniet fugit ratione aut soluta deleniti. Accusamus quas quia quod est animi.</p><p>Amet velit quibusdam accusamus quae expedita recusandae quisquam. Ut neque sed delectus quas qui quam. Tempora accusantium aut temporibus sed minima libero earum. Pariatur numquam facere quasi molestiae.</p><p>Rem est tempora quis similique similique perferendis. Quia animi sed et quam recusandae repellendus odio. Earum quia omnis dignissimos expedita voluptas laudantium.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(7, 2, 2, 'Tempora sapiente possimus.', 'fuga-accusamus-nesciunt-consequatur-quia', 'Non exercitationem repellat et atque iure quo. Aliquam aut ea omnis nulla voluptates ut. Quis rerum at ut dolorum eum placeat unde. Ut at quas ratione et voluptas.', '<p>Architecto in aut laudantium repellat rem possimus. Dolores officiis quibusdam aperiam unde eum perspiciatis at quaerat. Illum fugiat eum vitae tempora facere. Aperiam quia sapiente et. Vitae nam dolor debitis tenetur at minima in vero.</p><p>Facere non molestiae asperiores temporibus. Voluptatem quam non hic vel a sit quo. Recusandae reiciendis ipsa delectus maiores atque sunt. Voluptate eius sed voluptatum nemo aut tempore.</p><p>Hic omnis eveniet quaerat maiores est esse nam. Architecto qui doloremque aut aperiam. Placeat itaque soluta dolores maxime qui nesciunt aperiam. In nobis est qui ut repellat sit autem error.</p><p>Esse quas at cum sit. Ut a fugiat qui cupiditate non. Repudiandae ipsa aut autem molestiae provident maiores at. Enim vel consequatur consequatur debitis.</p><p>Quam ab enim libero sunt molestiae et. Distinctio quod et consequuntur et voluptatem molestias. Quae suscipit nisi fugiat repellat totam est exercitationem. Cum unde ut harum ratione dolore.</p><p>Aut optio est laborum consectetur cupiditate est eligendi numquam. Deleniti asperiores suscipit illum quae voluptatem consequatur omnis. Error modi debitis vel eum at sint.</p><p>Nihil temporibus fuga id voluptatem autem itaque ut. Quidem amet reiciendis quis sit dolorum voluptatem ex asperiores. Dolore iste nobis aut maxime sunt. Tenetur sed vel et odit exercitationem.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(8, 2, 3, 'Doloremque labore exercitationem porro.', 'et-voluptatem-neque-sed-porro-voluptatem-a-dolore-nemo', 'In asperiores est maxime amet quidem ullam sit. Est iste ullam debitis illo veritatis. Officiis rerum culpa blanditiis id repellendus ea.', '<p>Accusantium culpa consequatur possimus et. Voluptatem porro ab ipsum quod. Autem sunt est quidem vel. Neque velit eos ab veritatis vitae ut voluptatem.</p><p>Qui sit quos aut doloribus. Atque est quia et corrupti voluptate.</p><p>Quia adipisci sint autem optio. Ab sunt quo illo aut. Deleniti soluta aliquam ducimus culpa ut.</p><p>Ad voluptatem magni repellat error est quis qui explicabo. Quae sequi dolor quia suscipit quam. Natus sunt voluptatem expedita quaerat. Eligendi ullam ut officia nihil.</p><p>Nemo qui at eius distinctio aut cumque. Ab ad vel quos sit cumque. Vitae natus et mollitia eos alias et qui.</p><p>Eligendi a qui doloremque rerum sit enim officiis. Est qui autem unde at rerum ab sequi. Ut natus quas vel tempora aut. Deleniti quae odio sequi. Dolorem debitis assumenda molestias.</p><p>Quia sed ut deleniti non delectus minus. Sit aut libero eum. Repudiandae expedita enim ex neque laboriosam doloribus esse autem.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(9, 1, 1, 'Et excepturi omnis accusantium consequatur minus.', 'id-quas-doloremque-nihil-fugiat', 'Molestiae qui dolorem quae ut. Itaque doloribus perspiciatis suscipit est. Aut autem corrupti ipsa ullam nihil accusamus. Distinctio quia sapiente aut molestias dolor voluptas rerum. Esse sequi dolor inventore nemo omnis recusandae ut.', '<p>Itaque itaque laborum aut et et ratione. Amet aut in ut laborum et quidem deserunt. Voluptas sed est id consequatur. Aut sed in recusandae voluptas aut expedita optio aperiam.</p><p>Culpa iste maxime ut deserunt laudantium labore. Nam placeat commodi maiores quidem delectus et. Accusantium rerum quo voluptate ut sequi. Sit qui itaque rerum.</p><p>Non autem id pariatur quia et fuga. Similique porro ut sint sunt. Molestiae maxime ratione doloremque sint ex inventore.</p><p>Repellat minus quis enim totam rerum quae harum enim. Natus est provident inventore. Temporibus est quia aut.</p><p>Quia sint nesciunt et aut sed eos ex placeat. Libero minus voluptatem minus ratione reprehenderit enim quia. Exercitationem assumenda rerum eveniet in et.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(10, 1, 1, 'Quis omnis unde voluptatem velit magnam rem.', 'exercitationem-quia-sed-rerum-quibusdam-et', 'Ratione dicta rerum expedita molestias aut. Unde dicta et maxime ratione sunt. Quaerat quia in amet suscipit.', '<p>Incidunt a exercitationem saepe impedit. Molestiae eos et ratione quia. Dicta aperiam provident ut soluta officiis.</p><p>Voluptas aut rem dolor voluptate. Nihil voluptatem rerum doloremque dolores.</p><p>Quod et quibusdam est quaerat odio. Repellendus doloremque error architecto est excepturi.</p><p>Voluptatem molestiae omnis necessitatibus nobis velit explicabo quo esse. Ratione tenetur est qui rem aut. Culpa tenetur qui vero omnis voluptas labore dignissimos. Dignissimos ea aut earum maxime recusandae vero ea.</p><p>Numquam nobis sequi quos est ea repudiandae qui. Voluptates sint ad tenetur totam mollitia veritatis id. Voluptatem error blanditiis libero quia harum. Expedita tempora illo adipisci repellat magni est.</p><p>Odio asperiores eius voluptas porro. Et quisquam rem aut dolorem. Nam ratione libero ut est molestias autem harum. Autem non temporibus officia qui ipsa id.</p><p>Est sit et rem. Non facere unde aut ut vitae. Dolores molestiae aspernatur porro sequi. Similique eum tempora dignissimos maxime sint.</p><p>Rem laudantium inventore atque dolorum harum maxime sunt. Similique impedit quod soluta consequuntur et qui soluta.</p><p>Quo ex laudantium dolores in dolorem id aut. Qui officia et asperiores est quam. Error itaque voluptates dolor velit ab mollitia.</p><p>Quaerat asperiores error nulla deserunt. Quisquam beatae delectus vitae quam vel soluta temporibus ratione. Ut porro quia ut neque.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(11, 1, 3, 'Odio et ut.', 'voluptatem-et-quis-odit-ad', 'Id nihil est consequuntur ut dolores reiciendis cum. Veniam officia voluptas eos dolores possimus provident ducimus. Ex officia ratione ipsa voluptas id. Repellat dolore corporis impedit quis qui est.', '<p>Nam aut quia quia molestiae. Sapiente voluptatem facere non minima qui. Repellendus voluptatem qui et fugit. Ex sunt et et et distinctio distinctio ut impedit.</p><p>Dolore ad minima ipsum corporis sed voluptatem. Quod dolores tempora assumenda asperiores quod in voluptatem repellendus. Nemo aut molestias est doloribus porro nemo. Hic esse ut repellendus et qui in. Non omnis nisi est iste qui.</p><p>Magni animi repellat dolor eos quia iure. Et molestiae quod voluptas quos quae. Libero quod quos ex qui recusandae provident at. Provident possimus et voluptas incidunt.</p><p>Est quaerat iusto optio provident error debitis asperiores. Sequi dolor cum laborum non cumque est. Repellendus quasi magnam debitis sunt in. Illo in explicabo est maxime.</p><p>Quasi laudantium dicta dolor a voluptatem corrupti. Quisquam voluptates assumenda sit eveniet minima adipisci. Aliquam hic qui voluptate totam.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(12, 1, 1, 'Unde dolorem architecto assumenda debitis architecto minus ut.', 'quibusdam-voluptatem-cupiditate-id-et-est-commodi-omnis', 'Quod qui quos dignissimos assumenda. Ipsam tempora magnam ea maxime deserunt fugit. Placeat in doloribus accusamus est exercitationem velit.', '<p>Ratione eum sequi commodi repudiandae et. Earum placeat voluptatem sit ipsum quis occaecati. Et ullam et non error.</p><p>Amet quidem iusto exercitationem iste at ut. Et odit dolorem et nesciunt. Qui consequuntur facere dolores molestias numquam.</p><p>Ratione molestias voluptatibus sunt. Nam quos reprehenderit rem aut quis. Incidunt delectus dolorum neque earum consequatur. Et et sed est et.</p><p>Earum laudantium ad quia velit eum eos. Qui non in hic ea a molestias. Deserunt molestias dolores possimus.</p><p>Corporis velit vel maiores nobis. Blanditiis omnis a magni. Accusantium dolor ad nobis quis fuga veniam ut. Aut cumque molestias ut nemo quia delectus magni.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(13, 2, 3, 'Doloremque ullam recusandae voluptatibus et numquam.', 'tempora-voluptatum-et-enim-cumque-impedit', 'Aut molestiae inventore reiciendis quia. Eius qui perspiciatis quas debitis incidunt laborum aut. Molestiae quis totam dignissimos officia rem. Enim perferendis qui quia neque quo.', '<p>Sed voluptatem quo eos impedit voluptatibus. Nulla fugit harum et laborum modi nam quo. Quia quisquam officiis voluptatem ut mollitia sed maxime. Aut at sit necessitatibus aut doloribus odit eum.</p><p>Quae in totam eos alias quia et. In ullam facere et vitae earum. Facilis accusamus quibusdam nostrum doloribus hic possimus. Rerum aut quia ut ut perspiciatis enim non.</p><p>Doloremque quo incidunt ad. Recusandae voluptatibus quibusdam at voluptatem rerum repudiandae libero. Amet quidem provident eaque est qui ipsam aspernatur. Voluptas esse molestias qui iste quo.</p><p>Facilis ad dolor in rerum id dolores esse. Qui dolores dignissimos error fugiat quas. Ad sit aut praesentium. Non laudantium consequatur blanditiis perspiciatis saepe.</p><p>Omnis dolorum quis soluta eum. Est aut accusantium distinctio cupiditate tempore officia. Accusantium sit provident accusantium maiores voluptate. Delectus delectus saepe eum nisi impedit animi laboriosam dolores.</p><p>Ea facilis aut aliquid qui consequatur repellat. Accusantium voluptas magnam nobis aliquam laborum. Eligendi quo ipsum enim culpa laborum unde eos. Quidem est aut consequuntur.</p><p>Laudantium pariatur sint quia voluptas eius corporis. Voluptatum vero similique ex dolorum et aliquam adipisci debitis. Iste consequatur temporibus non fuga veritatis et vel.</p><p>Pariatur vero consequatur est dignissimos vel pariatur et. Et sapiente velit et quod. Temporibus nam excepturi aliquam laudantium natus ut.</p>', NULL, '2023-11-04 09:10:12', '2023-11-04 09:10:12'),
(14, 2, 2, 'Quam est ea libero ducimus optio ut vero earum ut.', 'nobis-asperiores-omnis-nihil-dolor-tenetur-quia', 'Velit quo quia dolore accusamus aliquam animi dicta. Id incidunt nihil impedit fugit accusantium quibusdam. Dolores non a fuga non explicabo. Doloribus dolorem sit alias et consectetur exercitationem aut.', '<p>Ut tenetur odit soluta assumenda. Aperiam vero dolores molestias voluptates. Deleniti modi vel eum consequuntur. Explicabo aperiam aut accusantium deleniti sit architecto.</p><p>Ex provident sapiente inventore consectetur labore. Quod maiores libero dicta quia delectus. Et ratione quasi sed exercitationem ut minus debitis voluptatem. Explicabo doloribus impedit eaque sunt et. Et aut et voluptas assumenda sunt.</p><p>Soluta fugiat sequi amet unde illo laudantium numquam dolorem. Aperiam non modi autem aut minima quas aliquam. Ex quos officia nobis velit. Sint et ipsa repellat et et soluta modi.</p><p>Cumque non molestiae debitis molestiae error fuga deleniti. Velit porro commodi ad dolores eos minus. Reiciendis quod et placeat ea voluptatem explicabo.</p><p>Nesciunt non accusantium in qui distinctio perferendis. Repudiandae ducimus sit dolor soluta. Veritatis odit cum iure aut numquam molestiae omnis. Distinctio a dolore magnam quo nam libero magni.</p><p>Deserunt est non laborum est alias non. Sint et architecto minus inventore ratione porro. Cumque et repellat aperiam odio corporis quibusdam atque. Debitis quo voluptatem sapiente sunt. Cum aspernatur animi itaque voluptatem.</p><p>Magnam quos omnis ratione officiis molestias exercitationem magnam voluptatem. Eveniet culpa atque est aut quos placeat. Sint porro exercitationem similique dolor. Consectetur dolor nemo minima sint dolor.</p><p>Praesentium dolor expedita nisi et. Nesciunt quia quia ipsum quidem quibusdam mollitia quaerat. Recusandae officiis rerum modi aperiam. Modi consequuntur delectus doloremque non.</p><p>Harum fugiat voluptates temporibus laborum quis. Architecto dicta qui rerum qui aperiam iusto qui ut. Velit molestias enim ipsam aperiam rerum vel eius.</p><p>Perferendis autem corporis laborum sed alias optio velit. Nemo et id totam occaecati. Expedita cum autem ut iure architecto doloremque consectetur quibusdam.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(15, 2, 3, 'Qui illo iusto unde nostrum explicabo velit consequatur.', 'dicta-expedita-ea-adipisci-ullam-maiores-mollitia', 'Tempora reprehenderit hic repellendus eum molestias voluptatem similique iusto. Vel blanditiis incidunt magni commodi iure. Explicabo aliquam explicabo sint et minus.', '<p>Aut ullam labore eum. Vero illo sed consectetur dolorem. Et magnam occaecati a. Quos officiis recusandae aliquam quas recusandae necessitatibus consectetur.</p><p>Dicta architecto quae sed ea. Enim atque deserunt nesciunt vel. Magnam consequatur quo voluptatum dolorem quaerat. Officiis in qui adipisci quas.</p><p>Eveniet suscipit quaerat debitis. Exercitationem sed aperiam rerum. Ut pariatur tempora est aut dolorum adipisci. Sapiente consectetur atque aut voluptatem et. Voluptate incidunt exercitationem voluptas molestiae.</p><p>Fugit ad porro eum nesciunt dicta sunt. Vel non atque quia vero alias nulla voluptatibus. Saepe natus nihil soluta rerum quaerat.</p><p>Quod ut voluptates quia non minima corporis iste. Nihil perspiciatis suscipit aspernatur incidunt explicabo. Porro assumenda voluptatem ut in.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(16, 2, 3, 'Odit sunt sit ut nobis.', 'aut-rem-dolorem-ut-vel-molestiae-qui-animi', 'Facere commodi corrupti aut sed officiis voluptates voluptatum. Perspiciatis illum repudiandae ea eos mollitia odit necessitatibus. Ea et earum facere.', '<p>Animi similique dolorem qui quia. Quam neque itaque nesciunt dolor non expedita facilis et. Nihil et unde consectetur animi quia deserunt soluta. Iusto voluptatibus ipsam distinctio et. Dolorum id a ut laudantium.</p><p>Eum quaerat vitae dolor recusandae quidem necessitatibus vero. Delectus ipsum amet repudiandae dolores minus praesentium. Quis vel quaerat ea velit architecto. Et aspernatur reprehenderit explicabo quaerat perspiciatis ipsum.</p><p>Est enim quisquam doloremque. Sed aut dolor rerum. Reiciendis provident qui voluptas dolores quaerat pariatur. Itaque soluta hic quisquam et.</p><p>Et praesentium sed nihil accusantium ipsam. Et id dignissimos hic asperiores praesentium dolor.</p><p>Quis non quia quia. Deserunt ipsa doloribus est voluptatem repellendus eveniet consequatur. Molestiae corrupti omnis possimus aliquam dolorum aut nihil.</p><p>Perferendis facere accusantium tenetur fugiat. Voluptas nam quia accusamus hic aut illum. Esse doloremque ut necessitatibus aut. Voluptatem doloribus possimus atque veniam sapiente fugit earum ipsam.</p><p>Similique accusamus id id. Molestias atque aspernatur aut et ea nostrum fuga. Pariatur doloremque rem quae nihil.</p><p>Accusantium consectetur iusto culpa error consequatur commodi. Molestias possimus quia rerum eos ut cupiditate autem. Quia nobis laboriosam delectus id nam.</p><p>Et voluptatibus voluptatum velit qui fuga fugit. Sed qui porro iure error qui beatae.</p><p>Velit omnis aut rerum ipsum nihil dolores ea. Autem ipsam esse consequatur omnis qui consequuntur. Qui quidem rerum sit nostrum quibusdam ea adipisci. Ut qui expedita distinctio voluptates assumenda tempore.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(17, 2, 3, 'Rerum amet soluta sed quas qui laboriosam.', 'sed-voluptas-aut-alias-animi-qui', 'At illo repellendus rerum est eos. Pariatur alias sapiente at perferendis voluptatem. Voluptatem qui odit et illo.', '<p>Doloribus vero rerum recusandae sunt qui eius quae. Nemo exercitationem qui doloribus voluptas. Eius nostrum aut neque quod. Ut nobis sunt hic placeat quod.</p><p>Consequatur qui perferendis placeat occaecati exercitationem. Veritatis earum quas blanditiis officia saepe nulla. Ut voluptas et officia culpa placeat. Itaque aspernatur autem saepe.</p><p>Similique et quia ut consequatur delectus ut esse enim. Asperiores sunt dolorum et est. Tenetur ex voluptatum nulla suscipit aut voluptas laborum.</p><p>Qui velit sequi ab labore in id quo. Ut sed nam id nostrum dolorem. Voluptas qui ipsam corrupti rerum quas.</p><p>Quas impedit nihil tenetur quas occaecati quia. Quia commodi perferendis et. Nihil voluptas dolorem quia aliquam enim.</p><p>Odio culpa ut atque maiores. Necessitatibus id et placeat delectus reprehenderit aut architecto. Nam rerum eum eos est ipsa. Molestiae similique sunt maxime laboriosam.</p><p>Temporibus tempore et est doloremque dignissimos voluptatem velit cum. Et a aut vitae exercitationem explicabo adipisci commodi. Voluptatem est fugiat magni rerum. Autem laudantium et ut.</p><p>Odio velit possimus adipisci facere sed repudiandae. Fugit eos libero modi dolorum eligendi. Architecto eius rem dignissimos sunt dolorum atque. Necessitatibus atque ullam aut consectetur enim.</p><p>Sunt et ut unde laborum omnis. Delectus dolore eum perferendis. Qui est quam id. Voluptate sed veritatis molestias laboriosam velit.</p><p>Iusto exercitationem praesentium temporibus fugit distinctio. Fugit ipsum aut nam veritatis occaecati accusamus id. Ea sit aut suscipit facere architecto. Perspiciatis quisquam beatae hic dolorem quasi distinctio.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(18, 2, 1, 'Iure laborum eveniet.', 'facilis-est-aspernatur-et-amet-voluptatem-est', 'Officia eos eum animi minima temporibus. Aut qui et atque facilis quam. Dolor adipisci quos cum tempora. Eaque unde alias voluptatem optio non.', '<p>Fugiat doloribus repellat asperiores voluptatem facilis ut. Eveniet aut autem beatae non culpa eum aliquam. Necessitatibus quasi commodi officiis ratione. Aut vel cupiditate et error ut aut qui. Et nobis maiores corrupti aut eius aspernatur animi qui.</p><p>Magni qui dolores quaerat consequuntur aut distinctio natus illum. Modi qui corporis voluptas commodi. Ipsum quia et aut voluptates iste.</p><p>Corporis quia voluptate nulla est ut nihil quod. In corrupti debitis voluptas velit enim et temporibus. Laborum ipsa quia aliquid accusamus fugiat. Est qui sed totam omnis maiores nemo.</p><p>Et aut inventore esse praesentium beatae. Minus eum enim porro iste quia animi.</p><p>Ipsa placeat unde rerum non animi. Dolor autem et autem optio a suscipit sit illum. Dolores minima magni sit aut.</p><p>Similique aut distinctio voluptas. Ab ut et temporibus quae laboriosam. Perferendis laboriosam omnis harum quo repudiandae optio illum.</p><p>Occaecati nisi sit veniam sint ducimus. Sunt ut deserunt voluptatem aut est exercitationem. Et aut consequuntur qui sed quia est. Consequatur ducimus autem adipisci porro et et est. Ratione magnam quae quibusdam voluptatem est asperiores.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(19, 1, 2, 'Quo nemo est ducimus omnis mollitia sit in unde.', 'est-quae-ut-aut-temporibus-nulla-voluptas-rerum', 'Libero eveniet molestias voluptas et est sit deleniti. Et eos vel consequatur voluptas nihil quo. Blanditiis earum et voluptatem.', '<p>Et corporis asperiores deserunt quia provident dolor. Et nostrum architecto quae et. Quia quam repellat aperiam ut. Repellendus et distinctio deleniti.</p><p>Nam eius consectetur dolores et molestias autem. Explicabo veniam quia quis itaque rem itaque recusandae exercitationem. Dolores eligendi nostrum odio asperiores praesentium ut doloribus omnis. Dicta magnam minus iure corrupti eos.</p><p>Harum sit sequi reprehenderit nobis vero et quo. Aut ut ut culpa fugit officiis. Eum ut et nesciunt distinctio illum.</p><p>Nemo fuga doloremque laudantium deleniti explicabo. Eum saepe cupiditate totam. Iste praesentium ipsum quaerat commodi vel perferendis. Facere fugit et id eos saepe et veniam.</p><p>Consequatur est reiciendis non est est ipsum maiores. Debitis ipsa porro vitae ad laborum unde. Ipsa tenetur explicabo fugit quisquam ut.</p><p>Autem sit laborum doloribus qui et id inventore. Sunt repellat rerum qui nobis. Ea aut iusto velit et facere odit illum hic.</p><p>Quia et veniam beatae voluptatem et. Sequi molestiae omnis eos sed dolorem veritatis. Corrupti tenetur fugiat inventore recusandae aliquam. Ipsa quas odit et rerum ad.</p><p>Et officiis aut ipsa omnis delectus consequatur. Ex corporis ut ut quis molestiae voluptatem. Similique iure voluptatem fugit consectetur quasi. Eum blanditiis expedita laborum blanditiis fugit eligendi.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13'),
(20, 1, 1, 'Soluta ea ipsa doloribus.', 'voluptatem-harum-dolores-repellat-laborum-in-aperiam', 'Placeat deserunt quibusdam et. Illum necessitatibus veniam laboriosam.', '<p>Eos unde facilis consequatur aliquam. In quasi perferendis itaque iusto. Omnis iusto ad voluptatem eaque rerum esse laboriosam et. Nesciunt eum velit similique quam illo.</p><p>Culpa consequatur blanditiis placeat itaque qui. Dolorum cupiditate in reiciendis optio non et eos. Soluta doloremque cumque ducimus nemo nesciunt eligendi dolorum. Delectus minima sapiente libero voluptatem magni.</p><p>Qui accusantium ut at recusandae vero illum. Ut sequi ipsum id non omnis magnam. Voluptatibus quod sed provident saepe iste.</p><p>Harum laboriosam voluptatem provident eaque sed. Velit magnam iste nulla ratione voluptates facilis sunt et. Odio quo quidem tenetur quis eum itaque ea quos. Inventore iure unde velit laborum adipisci enim.</p><p>Nisi et accusantium odio amet. Dolore possimus maxime soluta. Blanditiis autem sunt dolor consequatur porro. Ab corporis magnam ratione enim eveniet quisquam.</p><p>Consequatur ea beatae commodi explicabo ut quos sed mollitia. Est magnam quisquam qui dolore repellat exercitationem quia. Et sunt nemo consectetur consequatur provident id. Architecto ex dolor quae.</p><p>Pariatur maxime dolorem quia doloribus modi. Voluptate cupiditate sed quae placeat repellendus.</p>', NULL, '2023-11-04 09:10:13', '2023-11-04 09:10:13');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Silvia Yolanda', 'marsudi.melani', 'putri.usamah@example.net', '2023-11-04 09:10:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uC9FhJiaiK', '2023-11-04 09:10:10', '2023-11-04 09:10:10'),
(2, 'Carla Padmi Widiastuti S.T.', 'bakiman20', 'emin.nugroho@example.com', '2023-11-04 09:10:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O9UwlyqQcv', '2023-11-04 09:10:11', '2023-11-04 09:10:11'),
(3, 'Kiandra Kuswandari', 'setiawan.jamalia', 'heru30@example.net', '2023-11-04 09:10:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JFfQoz1zUo', '2023-11-04 09:10:11', '2023-11-04 09:10:11');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
