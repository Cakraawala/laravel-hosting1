-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Feb 2022 pada 06.09
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Universe', 'universe', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(2, 'Beach', 'beach', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(3, 'Islands', 'islands', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(4, 'Ocean', 'ocean', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(5, 'Tropic', 'tropic', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(6, 'Sky', 'sky', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(7, 'Web Programming', 'web-programming', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(8, 'Esports', 'esports', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(9, 'Technology', 'tech', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(10, 'Robot', 'robot', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(11, 'Computer', 'computer', '2022-02-13 20:33:34', '2022-02-13 20:33:34'),
(12, 'Gadget', 'gadget', '2022-02-13 20:33:34', '2022-02-13 20:33:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_021520_create_posts_table', 1),
(6, '2022_02_04_040347_create_categories_table', 1),
(7, '2022_02_10_041225_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tabrakan galaksi andromeda - bima sakti', 'tabrakan-galaksi-andromeda-bima-sakti', 'post-images/pcikSzM7nDruvR2WA4vHSlJeNJo6W4MgY5yWp8Fx.jpg', 'Tabrakan Andromeda–Bima Sakti&nbsp;Tabrakan galaksi andromeda dan bima sakti&nbsp;adalah tabrakan galaksi yang diperkirakan akan terjadi 4 miliar tahun lagi antara dua galaksi terbesar di Grup lokal g...', '<h1><strong>Tabrakan Andromeda–Bima Sakti</strong></h1><div><strong>Tabrakan galaksi andromeda dan bima sakti </strong>adalah tabrakan galaksi yang diperkirakan akan terjadi 4 miliar tahun lagi antara dua galaksi terbesar di Grup lokal galaksi Bima sakti (Tempat tata surya kita berada) dan galaksi Andromeda. namun bintang-bintang yang terlibat dipisahkan oleh jarak yang cukup jauh sehingga mustahil ada bintang yang ikut bertabrakan.<br>Galaksi Andromeda mendekati Bima sakti dengan kecepatan sekitar 110 kilometer per detik (68 mi/s). Sampai 2012, tidak diketahui apakah tabrakan pasti terjadi atau tidak. para peneliti menyimpulkan bahwa tabrakan ini pasti terjadi berdasarkan pengamatan gerakan Andromeda menggunakan Teleskop Luar Angkasa Hubble antara tahun 2002 dan 2010.<br><br>Ketika dua galaksi spiral bertabrakan, hidrogen yang ada di piringannya terpadatkan dan menghasilkan Formasi bintang kuat seperti yang ada di sistem interaksi Galaksi antennae. Pada tabrakan Andromeda–Bima Sakti, diyakini bahwa kandungan gas yang tersisa di piringan kedua galaksi sudah sedikit sehingga ledakan bintangnya relatif lemah, tetapi cukup untuk menghasilkan kuasar.<br><br>source : https://id.wikipedia.org/wiki/Tabrakan_Andromeda%E2%80%93Bima_Sakti#cite_note-NASA-4<br>source img : https://pixabay.com/id/photos/bima-sakti-bintang-langit-malam-2695569/</div>', NULL, '2022-02-13 20:43:46', '2022-02-13 21:04:33'),
(2, 2, 1, 'Pink beach lombok', 'pink-beach-lombok', 'post-images/FmPKrOBUYsUY88inaOdOKyGJhrkUs2eM10jEZBfE.jpg', 'Pink beach Lombok, NTTPantai Tangsi atau yang lebih dikenal dengan Pantai Pink dari Pulau Lombok terletak di desa Sekaroh, kecamatan Jerowaru, kabupaten Lombok timur adalah sebuah destinasi wisatawan...', '<h1><strong>Pink beach Lombok, NTT</strong></h1><div><strong><br>Pantai Tangsi</strong> atau yang lebih dikenal dengan <strong>Pantai Pink</strong> dari Pulau Lombok terletak di desa Sekaroh, kecamatan Jerowaru, kabupaten Lombok timur adalah sebuah destinasi wisatawan yang menarik dan patut untuk dikunjungi karena keunikannya. Pantai ini merupakan salah satu dari tujuh pantai di Dunia yang memiliki pasir pantai berwarna pink, dan satu dari dua pantai di Indonesia yang memiliki pasir pantai berwarna pink.<a href=\"https://id.wikipedia.org/wiki/Pantai_Tangsi#cite_note-p-3\"><br></a><br></div><div>Warna pink pada pasirnya terbentuk karena butir-butir asli warna putih pasir bercampur dengan serpihan karang merah muda. Bias sinar matahari dan terpaan air laut menambah semakin jelas terlihat warna pink pantai tersebut. Pantai ini begitu tenang dan hanya memiliki ombak yang kecil sehingga membuat wisatawan lebih nyaman ketika bermain disana.Keindahan Pantai Pink pun terlihat sempurna dengan hamparan bukit di sekelilingnya.Di sisi kiri ada bukit dengan padang rumput yang luas dan dari bukit inilah pemandangan Pantai Pink terlihat sangat indah. Selain itu, ada juga tanjung yang eksotis di sisi kanan dengan gazebo yang memang disediakan di atasnya.</div><div><br>Letaknya yang tersembunyi dan jauh dari pusat kota membuat pantai ini terjaga keindahannya. Infrastruktur yang tidak memadai membuat anda harus menempuh perjalanan sekitar 2 jam dari kota Mataram dan ketika anda sampai di sana jangan harap akan menemukan warung atau penginapan. Oleh karena itu, disarankan anda membawa makanan dari kota dan kembali ke kota untuk menginap<br><br></div><div>souce : https://id.wikipedia.org/wiki/Pantai_Tangsi#/media/Berkas:Pantai_Pink_yang_menabjubkan.jpg<br>source img :https://www.teahub.io/down/oTooJo_lombok-island-pink-beach/</div>', NULL, '2022-02-13 21:02:37', '2022-02-13 21:02:59'),
(3, 4, 2, 'Black sea', 'black-sea', 'post-images/LmNRXQi8kKTLM41u8R9Bdg2ps1OWcpeh7CMnYrD1.jpg', 'Laut hitamLaut Hitam adalah sebuah laut dalam antara Eropa tenggara dan Asia Kecil. Dia terhubungkan dengan Laut Tengah oleh Bosporus dan Laut Marmara, dan Laut Azov oleh Selat Kerch.Ada masukan air l...', '<h1><strong>Laut hitam</strong></h1><div><strong>Laut Hitam</strong> adalah sebuah laut dalam antara Eropa tenggara dan Asia kecil. Dia terhubungkan dengan Laut tengah oleh Bosporus dan Laut marmara, dan Laut Azov oleh Selat kerch.</div><div><br>Ada masukan air laut melalui Bosporus, 200 km³ per tahun. Ada masukan air tawar dari wilayah sekitar, terutama Eropa Tengah dan Timur-Tengah(Asia barat), dengan jumlah total 320 km³ per tahun. Sungai terpenting yang masuk ke Laut Hitam adalah Donau . Laut Hitam memiliki wilayah 422.000 km² dan kedalaman maksimum 2.210 m.Laut Hitam tidak berwarna hitam, tetapi berwarna biru sama seperti laut pada umumnya.<br><br></div><div><br>Negara yang berbatasan dengan Laut Hitam adalah:<br><br></div><ul><li><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:14,&quot;url&quot;:&quot;https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Bulgaria.svg/23px-Flag_of_Bulgaria.svg.png&quot;,&quot;width&quot;:23}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Bulgaria.svg/23px-Flag_of_Bulgaria.svg.png\" width=\"23\" height=\"14\"><figcaption class=\"attachment__caption\"></figcaption></figure> Bulgaria</li><li><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:15,&quot;url&quot;:&quot;https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/23px-Flag_of_Georgia.svg.png&quot;,&quot;width&quot;:23}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/23px-Flag_of_Georgia.svg.png\" width=\"23\" height=\"15\"><figcaption class=\"attachment__caption\"></figcaption></figure> Georgia</li><li><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:15,&quot;url&quot;:&quot;https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Romania.svg/23px-Flag_of_Romania.svg.png&quot;,&quot;width&quot;:23}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Romania.svg/23px-Flag_of_Romania.svg.png\" width=\"23\" height=\"15\"><figcaption class=\"attachment__caption\"></figcaption></figure> Rumania</li><li><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:15,&quot;url&quot;:&quot;https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/23px-Flag_of_Russia.svg.png&quot;,&quot;width&quot;:23}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/23px-Flag_of_Russia.svg.png\" width=\"23\" height=\"15\"><figcaption class=\"attachment__caption\"></figcaption></figure> Rusia</li><li><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:15,&quot;url&quot;:&quot;https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/23px-Flag_of_Turkey.svg.png&quot;,&quot;width&quot;:23}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/23px-Flag_of_Turkey.svg.png\" width=\"23\" height=\"15\"><figcaption class=\"attachment__caption\"></figcaption></figure> Turki</li></ul><div><br></div><div><br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Laut_Hitam\">https://id.wikipedia.org/wiki/Laut_Hitam<br></a>souce image : <br><a href=\"https://ec.europa.eu/research-and-innovation/sites/default/files/styles/w1108/public/hm/field/image/1200px-Black_Sea_Nasa_May_25_2004.jpg?itok=eag8B32l\">https://ec.europa.eu/research-and-innovation/sites/default/files/styles/w1108/public/hm/field/image/1200px-Black_Sea_Nasa_May_25_2004.jpg?itok=eag8B32l</a></div>', NULL, '2022-02-13 21:21:40', '2022-02-13 21:29:14'),
(4, 5, 2, 'Tropica', 'tropica', 'post-images/eVniGU4ysRZPybwpdKPOYm7nKEw1xwbcvYNU2hoY.jpg', 'TropicTropika adalah suatu daerah di permukaan Bumi, yang secara geografis berada di sekitar ekuator, yaitu yang terletak di antara garis lintang 23.5 derajat LS dan 23.5 derajat LU: Garis Balik Utara...', '<h1><strong>Tropic</strong></h1><div><strong>Tropika</strong> adalah suatu daerah di permukaan Bumi, yang secara geografis berada di sekitar ekuator, yaitu yang terletak di antara garis lintang 23.5 derajat LS dan 23.5 derajat LU: Garis Balik Utara (GBU, <em>Tropic of Cancer</em>) di utara dan Garis Balik Selatan (GBS, <em>Tropic of Capricorn</em>) di selatan. <strong>Tropis</strong> adalah bentuk kata sifatnya. Kata <em>tropika</em> berasal dari bahasa Yunani, <em>tropos</em> yang berarti \"berputar\", karena posisi Matahari yang berubah antara dua garis balik dalam periode yang disebut tahun.<br><br></div><div><br>Wilayah yang termasuk iklim tropis dapat dibedakan menjadi daerah tropis kering yang meliputi stepa, savanna kering, dan gurun pasir dan daerah tropis lembab yang meliputi hutan hujan tropis, daerah-daerah dengan musim basah dan savanna lembab.<br><br></div><div><br>Area ini terletak di antara 23.5° LU dan 23.5° LS, dan mencakup seluruh bagian Bumi dalam setahun mengalami dua kali di kelilingi Matahari tepat berada di atas kepala (di utara GBU dan di selatan GBS Matahari tidak pernah mencapai ketinggian 90° atau tepat di atas kepala).<br><br></div><div><br>Tumbuhan dan hewan <strong>tropis</strong> adalah spesies yang hidup di daerah tropis tersebut. Istilah tropis juga kadang kala digunakan untuk menyebut tempat yang hangat dan lembap sepanjang tahun, walaupun tempat itu tidak terletak di antara dua garis balik. Tumbuhan daerah tropis biasanya berdaun lebar dan hijau abadi (tidak menggugurkan daun), atau jika memiliki perilaku peluruh mereka tidak dipengaruhi oleh suhu atau durasi radiasi Matahari melainkan oleh ketersediaan air di tanah. Wilayah tropis di seluruh dunia dikenal dalam biogeografi sebagai wilayah <strong><em>pantropis</em></strong> (\"seluruh tropis\"), untuk dipertentangkan dengan wilayah per benua, seperti Amerika tropis, atau Asia tropis.<br><br>souce : <a href=\"https://id.wikipedia.org/wiki/Tropika#:~:text=Tropika%20adalah%20suatu%20daerah%20di,Tropic%20of%20Capricorn)%20di%20selatan.\">https://id.wikipedia.org/wiki/Tropika#:~:text=Tropika%20adalah%20suatu%20daerah%20di,Tropic%20of%20Capricorn)%20di%20selatan.</a></div>', NULL, '2022-02-13 21:28:40', '2022-02-13 21:28:40'),
(5, 6, 2, 'Sunset vs Sunrise', 'sunset-vs-sunrise', 'post-images/Xbfoyw2HkSqunPXtmQZGwSLtVmpffY6ywa5qAYYF.jpg', 'Perbedaan Sunset dan SunriseMatahari terbenam atau swastamita atau Sunset adalah waktu di mana matahari menghilang di bawah garis cakrawala di sebelah barat. Warna merah di langit pada waktu Matahari...', '<h1>Perbedaan Sunset dan Sunrise</h1><div><strong>Matahari terbenam</strong> atau <strong>swastamita</strong> atau <strong>Sunset </strong>adalah waktu di mana matahari menghilang di bawah garis cakrawala di sebelah barat. Warna merah di langit pada waktu Matahari terbenam dan terbit disebabkan oleh kombinasi hamburan Rayleigh warna biru dan tingkat kepadatan atmosfer bumi.<br><br>sedangkan,<strong> <br>Matahari terbit</strong> atau <strong>arunika</strong> atau <strong>Sunrise </strong>adalah peristiwa di mana sisi teratas Matahari muncul di atas horizon di sebelah timur. Matahari terbit tidak sama dengan fajar, di mana langit mulai terang, beberapa waktu sebelum Matahari muncul, mengakhiri <em>twilight</em> (peristiwa cahaya Matahari terlihat mulai akhir senja hingga fajar). Karena refraksi atmosfer menyebabkan Matahari masih dapat terlihat sementara berada di bawah horizon, Matahari terbit dan Matahari terbenam adalah, dari satu sudut pandang, ilusi optik. Matahari juga muncul lebih besar di horizon, tetapi hal ini merupakan ilusi optik lainnya, sama dengan ilusi bulan.<br><br></div><div>Revolusi Matahari ke barat mengitari bumi setelah keluar dari horizon disebabkan rotasi Bumi ke timur, sebuah revolusi berlawanan jarum jam ketika dilihat dari atas Kutub Utara. Ilusi ini sangat meyakinkan bahwa banyak budaya memiliki mitologi dan agama yang dibuat berdasarkan model geosentris. Efek yang sama dapat dilihat dengan satelit dekat kutub.<br><br></div><div><br><br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Matahari_terbenam\">https://id.wikipedia.org/wiki/Matahari_terbenam</a> &amp; <a href=\"https://id.wikipedia.org/wiki/Matahari_terbit\">https://id.wikipedia.org/wiki/Matahari_terbit</a></div>', NULL, '2022-02-13 21:34:12', '2022-02-13 21:34:12'),
(6, 7, 3, 'Laravel', 'laravel', 'post-images/SxUeHkUN59nywoYRiTugC4T8Q8hPX8yltb01ZiPL.png', 'LaravelLaravel adalah kerangka kerja aplikasi web berbasis PHP yang sumber terbuka, menggunakan konsep Model-View-Controller (MVC). Laravel berada dibawah lisensi MIT, dengan menggunakan GitHub sebaga...', '<h1><strong>Laravel</strong></h1><div><strong>Laravel</strong> adalah kerangka kerja aplikasi web berbasis PHP yang sumber terbuka, menggunakan konsep Model-View-Controller (MVC). Laravel berada dibawah lisensi MIT, dengan menggunakan GitHub sebagai tempat berbagi kode.[3][4][5]<br><br></div><div>Pada bulan Desember 2013, Laravel menempati kerangka kerja PHP terpopuler dan berada di atas kerangka kerja PHP lain seperti Phalcon, Symfony, CodeIgniter, dan lainnya<br><br>Sejarah rilis<br>Versi LTS akan mendapat dukungan selama 2 tahun untuk perbaikan kutu dan dukungan selama 3 tahun untuk perbaikan keamanan. Versi lain yang non-LTS hanya akan mendapatkan dukungan selama 6 bulan untuk perbaikan kutu dan dukungan selama 1 tahun untuk perbaikan keamanan.<br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Laravel\">https://id.wikipedia.org/wiki/Laravel</a></div>', NULL, '2022-02-13 21:36:52', '2022-02-13 21:36:52'),
(7, 8, 3, 'What is Esport?', 'what-is-esport', 'post-images/hu9sBmU7JyVFCMS76qsrN01wOGIwdvG7Lb3juAZP.jpg', 'EsportOlahraga elektronik (bahasa Inggris: electronic sports, e-sports, esports) merupakan suatu istilah untuk kompetisi permainan video pemain jamak, umumnya antara para pemain profesional. Aliran pe...', '<h1><strong>Esport</strong></h1><div><strong>Olahraga elektronik</strong> (bahasa Inggris: <em>electronic sports, e-sports, esports</em>) merupakan suatu istilah untuk kompetisi permainan video pemain jamak, umumnya antara para pemain profesional. Aliran permainan video yang biasanya dihubungkan dengan olahraga elektronik adalah aliran strategi waktu-nyata, perkelahian, tembak-menembak orang-pertama, dan arena pertarungan daring multipemain. Turnamen seperti The International <em>Dota 2</em> Championships, <em>League of Legends</em> World Championship, Battle.net World Championship Series, Evolution Championship Series, Intel Extreme Masters, menampilkan siaran langsung serta hadiah tunai pada para pemainnya.<br><br></div><div>Meski kompetisi teroganisasi telah lama menjadi bagian dari budaya permainan video, kompetisi ini telah mengalami peningkatan besar dalam popularitas dari akhir dekade 2000-an dan awal 2010-an. Jika kompetisi di dekade 2000-an kebanyakan diikuti oleh para pemain amatir, pengadaan kompetisi profesional dan meningkatnya pemirsa saat ini mendukung munculnya banyak pemain dan tim profesional secara signifikan,[1][2] dan banyak pengembang permainan video saat ini membangun permainan dengan corak untuk memfasilitasi kompetisi tersebut.<br><br><br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Olahraga_elektronik\">https://id.wikipedia.org/wiki/Olahraga_elektronik</a></div>', NULL, '2022-02-13 21:39:44', '2022-02-13 21:39:44'),
(8, 9, 3, 'Nano tech', 'nano-tech', 'post-images/AxERcCtss3H5aqrpxUm94jekVbR3ZLNFsluQrr4n.jpg', 'What is nano techNanoteknologi adalah manipulasi materi pada skala atomik dan skala molekular. Diameter atom berkisar antara 62 pikometer (atom Helium) sampai 520 pikometer (atom Cesium), sedangkan ko...', '<h1><strong>What is nano tech</strong></h1><div><strong><br>Nanoteknologi</strong> adalah manipulasi materi pada skala atomik dan skala molekular. Diameter atom berkisar antara 62 pikometer (atom Helium) sampai 520 pikometer (atom Cesium), sedangkan kombinasi dari beberapa atom membentuk molekul dengan kisaran ukuran nano, yaitu ukuran benda yang besarnya: satu per miliar meter (0,0000000001 m) atau satu meter dibagi satu miliar. Istilah Nanoteknologi pertama kali disebut dalam pidato ilmiah Profesor Nario Taniguci tahun 1974.<br><br></div><div>Deskripsi awal dari nanoteknologi mengacu pada tujuan penggunaan teknologi untuk memanipulasi atom dan molekul untuk membuat produk berskala makro. Deskripsi yang lebih umum adalah manipulasi materi dengan ukuran maksimum 100 nanometer.<br><br><strong>Penelitian dan pengembangan.</strong></div><div>Karena berbagai aplikasi potensial (termasuk industri dan militer), pemerintahan berbagai negara telah menginvestasikan miliaran dolar dalam penelitian nanoteknologi. Sebelum 2012, AS menginvestasikan US$3,7 miliar menggunakan National Nanotechnology Initiative, Uni Eropa menginvestasikan US$1,2 miliar, dan Jepang menginvestasikan US$750 juta. Lebih dari enam puluh negara menciptakan program penelitian dan pengembangan nanoteknologi (R&amp;D) antara tahun 2001 dan 2004. Pada 2012, AS dan UE masing-masing menginvestasikan US$2,1 miliar pada penelitian nanoteknologi, diikuti oleh Jepang dengan US$1,2 miliar. Investasi global mencapai US$7,9 miliar pada 2012. Pendanaan pemerintah dilampaui oleh pengeluaran R&amp;D perusahaan untuk penelitian nanoteknologi, yang mencapai US$10 miliar pada tahun 2012. Pengeluaran litbang korporat terbesar berasal dari AS, Jepang, dan Jerman yang jika digabungkan sebesar US$7,1 miliar.<a href=\"https://id.wikipedia.org/wiki/Nanoteknologi#cite_note-wipo-5\"><br></a><br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Nanoteknologi\">https://id.wikipedia.org/wiki/Nanoteknologi</a></div>', NULL, '2022-02-13 21:43:50', '2022-02-13 21:43:50'),
(9, 10, 4, 'Artificial Intelligence', 'artificial-intelligence', 'post-images/CihxqI9OupYzRRYU9umxbZTTSHD27gAAkN7BJIX4.png', 'Artificial IntelligenceKecerdasan buatan adalah kecerdasan yang ditambahkan kepada suatu sistem yang bisa diatur dalam konteks ilmiah atau bisa disebut juga intelegensi artifisial (bahasa Inggris: Art...', '<h1>Artificial Intelligence</h1><div><strong>Kecerdasan buatan</strong> adalah kecerdasan yang ditambahkan kepada suatu sistem yang bisa diatur dalam konteks ilmiah atau bisa disebut juga <strong>intelegensi artifisial</strong> (bahasa Inggris: <em>Artificial Intelligence</em>) atau hanya disingkat <strong>AI</strong>, didefinisikan sebagai kecerdasan <em>entitas</em> ilmiah. Andreas Kaplan dan Michael Haenlein mendefinisikan kecerdasan buatan sebagai “kemampuan sistem untuk menafsirkan data eksternal dengan benar, untuk belajar dari data tersebut, dan menggunakan pembelajaran tersebut guna mencapai tujuan dan tugas tertentu melalui adaptasi yang fleksibel”.[1] Sistem seperti ini umumnya dianggap komputer. Kecerdasan diciptakan dan dimasukkan ke dalam komputer agar dapat melakukan pekerjaan seperti yang dapat dilakukan manusia. Beberapa macam bidang yang menggunakan kecerdasan buatan antara lain sistem pakar, permainan komputer, logika kabur, jaringan saraf tiruan dan robotika. Secara teknis, kecerdasan buatan adalah model statistik yang digunakan untuk mengambil keputusan dengan menggeneralisir karakteristik dari suatu objek berbasis data yang kemudian dipasang di berbagai perangkat elektronik.<br><br></div><div><br>Banyak hal yang kelihatannya sulit untuk kecerdasan manusia, tetapi untuk informatika relatif tidak bermasalah. Seperti contoh: mentransformasikan persamaan, menyelesaikan persamaan integral, atau membuat permainan catur. Di sisi lain, hal yang bagi manusia kelihatannya menuntut sedikit kecerdasan, sampai sekarang masih sulit untuk direalisasikan dalam Informatika. Seperti contoh: Pengenalan Objek/Muka, bermain sepak bola.<br><br></div><div><br>Walaupun AI memiliki konotasi fiksi ilmiah yang kuat, AI membentuk cabang yang sangat penting pada ilmu komputer, berhubungan dengan perilaku, pembelajaran dan adaptasi yang cerdas dalam sebuah mesin. Penelitian dalam AI menyangkut pembuatan mesin dan program komputer untuk mengotomatisasikan tugas-tugas yang membutuhkan perilaku cerdas. Termasuk contohnya adalah pengendalian, perencanaan dan penjadwalan, kemampuan untuk menjawab diagnosa dan pertanyaan pelanggan, serta pengenalan tulisan tangan, suara dan wajah. Hal-hal seperti itu telah menjadi disiplin ilmu tersendiri, yang memusatkan perhatian pada penyediaan solusi masalah kehidupan yang nyata. Sistem AI sekarang ini sering digunakan dalam bidang ekonomi, sains, obat-obatan, teknik dan militer, seperti yang telah dibangun dalam beberapa aplikasi perangkat lunak komputer rumah dan video game.<br><br></div><div><br>Kecerdasan buatan ini bukan hanya ingin mengerti apa itu sistem kecerdasan, tetapi juga mengkonstruksinya.<br><br><br><br><br>source :<a href=\"https://id.wikipedia.org/wiki/Kecerdasan_buatan\">https://id.wikipedia.org/wiki/Kecerdasan_buatan</a></div>', NULL, '2022-02-13 21:47:53', '2022-02-13 21:47:53'),
(11, 11, 4, 'Computer', 'computer', 'post-images/ZMhRAAZa3o9llY9DnLL2X8cu76YuK0mz7QvyAvk3.jpg', 'ComputerKomputer adalah alat yang dipakai untuk mengolah data menurut prosedur yang telah dirumuskan. Kata komputer pada awalnya dipergunakan untuk menggambarkan orang yang perkerjaannya melakukan per...', '<h1>C<strong>omputer</strong></h1><div> adalah alat yang dipakai untuk mengolah data menurut prosedur yang telah dirumuskan. Kata <em>komputer</em> pada awalnya dipergunakan untuk menggambarkan orang yang perkerjaannya melakukan perhitungan aritmetika, dengan atau tanpa alat bantu, tetapi arti kata ini kemudian dipindahkan kepada mesin itu sendiri. Asal mulanya, pengolahan informasi hampir eksklusif berhubungan dengan masalah aritmetika, tetapi komputer modern dipakai untuk banyak tugas yang tidak berhubungan dengan matematika.<br><br></div><div><br>Dalam arti seperti itu terdapat alat seperti <em>slide rule</em>, jenis kalkulator mekanik mulai dari abakus dan seterusnya, sampai semua komputer elektronik yang kontemporer. Istilah lebih baik yang cocok untuk arti luas seperti \"komputer\" adalah \"yang mengolah informasi\" atau \"sistem pengolah informasi.\" Selama bertahun-tahun sudah ada beberapa arti yang berbeda dalam kata \"komputer\", dan beberapa kata yang berbeda tersebut sekarang disebut sebagai komputer.<br><br></div><div><br>Kata <em>komputer</em> secara umum pernah dipergunakan untuk mendefiniskan orang yang melakukan perhitungan aritmetika, dengan atau tanpa mesin pembantu. Menurut <em>Barnhart Concise Dictionary of Etymology</em>, kata tersebut digunakan dalam bahasa Inggris pada tahun 1646 sebagai kata untuk \"orang yang menghitung\" kemudian menjelang 1897 juga digunakan sebagai \"alat hitung mekanis\". Selama Perang Dunia II kata tersebut menunjuk kepada para pekerja wanita Amerika Serikat dan Inggris yang pekerjaannya menghitung jalan artileri perang dengan mesin hitung.<br><br></div><div><br>Charles Babbage mendesain salah satu mesin hitung pertama yang disebut mesin analitikal. Selain itu, berbagai alat mesin sederhana seperti <em>slide rule</em> juga sudah dapat dikatakan sebagai komputer.<br><br></div><div><br><br><br><br>source : <a href=\"https://id.wikipedia.org/wiki/Komputer\">https://id.wikipedia.org/wiki/Komputer</a><br>source image : <a href=\"https://www.wallpaperbetter.com/id/hd-wallpaper-zaqsp/download/1366x768\">https://www.wallpaperbetter.com/id/hd-wallpaper-zaqsp/download/1366x768</a></div><div><br></div>', NULL, '2022-02-13 22:00:43', '2022-02-13 22:01:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Cemani Cemeti Tampubolon', 'ahidayat', 'cemanicemeti@gmail.com', '2022-02-13 20:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WTDrbWWgAdnWuSMvCoZN46gM9xwS7pj4DJ42MytLqT9qk8ZwM6VHByvHXoUW', '2022-02-13 20:33:34', '2022-02-13 20:33:34', 0),
(2, 'Karimah Keisha Rahmawati', 'ana.saefullah', 'karimahkeisha@gmail.com', '2022-02-13 20:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't5mLbKRvh1fARwbPDhYulYV1mkUVCYTIZxcYPoKlaQBEy4lHW3XSVsS8khfD', '2022-02-13 20:33:34', '2022-02-13 20:33:34', 0),
(3, 'Tina Maria Palastri S.IP', 'nhastuti', 'tinamariapalastri@gmail.com', '2022-02-13 20:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xHcEHZWjv59lcG7TE5uzBTN2dug78qqxYqfjpuQ8MF1nDP5JMLpPchvE5rRT', '2022-02-13 20:33:34', '2022-02-13 20:33:34', 0),
(4, 'Vanesa Pudjiastuti', 'atma.sihombing', 'vanesapudjiastuti@gmail.com', '2022-02-13 20:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S9VW3CRxKy2qNjTQFeVCFWLe4kgIu6mU4FbhxT9mUiL5df2NEOFtapGXnpig', '2022-02-13 20:33:34', '2022-02-13 20:33:34', 0),
(5, 'Angger cakra', 'cakrawalaa', 'Angger@gmail.com', NULL, '$2y$10$ojexllyNg9VSn8EH.Dzt.evJKBfoV3K9uOOYw3ZvmFtW5a.YTmM5G', NULL, '2022-02-13 20:33:34', '2022-02-13 20:33:34', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
