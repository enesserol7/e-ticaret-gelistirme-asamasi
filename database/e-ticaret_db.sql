-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Kas 2018, 00:24:10
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bidolu_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `campaign_url` varchar(255) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `starting_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `img_url`, `campaign_url`, `isActive`, `starting_date`, `end_date`, `createdAt`) VALUES
(1, 'deneme düzenleme', '<p>deneme reklam düzenleme</p>', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', 'https://videosinif.com', 1, '2018-08-15 18:45:00', '2018-08-24 13:15:00', '2018-08-15 10:58:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `piece` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `kdv` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'Yemek Sepeti', 'ys-logo-0.jpg', 0, 1, '2018-08-17 10:07:25'),
(2, 'Turkish Airlines', 'thy-logo-1.png', 0, 1, '2018-08-17 10:07:44'),
(3, 'Coldwell Banker', 'coldwell-banker-ref.jpg', 0, 1, '2018-08-17 10:08:00'),
(4, 'Volvo', 'volvo-logo-1.png', 0, 1, '2018-08-17 10:08:11'),
(5, 'Özsüt', 'ozsut-logo-1.png', 0, 1, '2018-08-17 10:08:26'),
(6, 'Remax', 'remax-logo-1.png', 0, 1, '2018-08-17 10:08:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `card_information`
--

CREATE TABLE `card_information` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `name_surname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
--

CREATE TABLE `courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_2` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tc_no` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tax_number` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci,
  `billing_address` text COLLATE utf8_turkish_ci,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL,
  `ip_address` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`id`, `name`, `url`, `phone`, `phone_2`, `email`, `password`, `tc_no`, `tax_number`, `address`, `billing_address`, `date_of_birth`, `gender`, `sector_id`, `createdAt`, `company_name`, `isActive`, `ip_address`) VALUES
(9, 'Enes Erol', 'enes-erol', '5303718083', '5423708083', 'eneserol7@outlook.com', 'c8837b23ff8aaa8a2dde915473ce0991', '15605295294', '3670471380', NULL, NULL, '1997-02-16', 'Erkek', 1, '2018-08-27 12:33:20', 'Net Bilişim Hizmetleri', 1, '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `protocol` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_turkish_ci DEFAULT '',
  `user` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `from` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `to` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'ssl://mail.netreklamcim.net', '465', 'info@netreklamcim.net', 'NR2018**', 'info@netreklamcim.net', 'eneserol7@gmail.com', 'CMS', 1, '2018-01-14 14:57:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_payments`
--

CREATE TABLE `failed_payments` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bankers_reply` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

CREATE TABLE `files` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gallery_type` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `folder_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon_name` varchar(255) NOT NULL,
  `icon_code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `icons`
--

INSERT INTO `icons` (`id`, `icon_name`, `icon_code`) VALUES
(1, 'flaticon-cloud-computing', 'flaticon-cloud-computing'),
(2, 'flaticon-business-affiliate-network', 'flaticon-business-affiliate-network'),
(3, 'flaticon-edit-tools', 'flaticon-edit-tools'),
(4, 'flaticon-logo', 'flaticon-logo'),
(5, 'flaticon-security', 'flaticon-security'),
(6, 'flaticon-support', 'flaticon-support'),
(7, 'flaticon-stationery', 'flaticon-stationery'),
(8, 'flaticon-megaphone', 'flaticon-megaphone'),
(9, 'flaticon-technology-1', 'flaticon-technology-1'),
(10, 'flaticon-technology', 'flaticon-technology'),
(11, 'flaticon-customer', 'flaticon-customer'),
(12, 'flaticon-vector-design', 'flaticon-vector-design'),
(13, 'flaticon-add-contact', 'flaticon-add-contact'),
(14, 'flaticon-technology-2', 'flaticon-technology-2'),
(15, 'flaticon-creative-process', 'flaticon-creative-process'),
(16, 'flaticon-group-of-students', 'flaticon-group-of-students'),
(17, 'flaticon-friend-request', 'flaticon-friend-request'),
(18, 'flaticon-coding', 'flaticon-coding'),
(19, 'flaticon-monitor', 'flaticon-monitor'),
(20, 'icon-refresh', 'icon-refresh'),
(21, 'icon-alarmclock', 'icon-alarmclock'),
(22, 'icon-quote', 'icon-quote'),
(23, 'icon-lifesaver', 'icon-lifesaver'),
(24, 'icon-compass', 'icon-compass'),
(25, 'icon-global', 'icon-global'),
(26, 'icon-piechart', 'icon-piechart'),
(27, 'icon-download', 'icon-download'),
(28, 'icon-heart', 'icon-heart'),
(29, 'icon-cloud', 'icon-cloud'),
(30, 'icon-mic', 'icon-mic'),
(31, 'icon-linegraph', 'icon-linegraph'),
(32, 'icon-tools', 'icon-tools'),
(33, 'icon-lightbulb', 'icon-lightbulb'),
(34, 'icon-gears', 'icon-gears'),
(35, 'icon-envelope', 'icon-envelope'),
(36, 'icon-map', 'icon-map'),
(37, 'icon-megaphone', 'icon-megaphone'),
(38, 'icon-toolbox', 'icon-toolbox'),
(39, 'flaticon-vector-design', 'flaticon-vector-design'),
(40, 'flaticon-technology', 'flaticon-technology'),
(41, 'flaticon-monitor', 'flaticon-monitor'),
(42, 'flaticon-coding', 'flaticon-coding');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `information_pages`
--

CREATE TABLE `information_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `information_pages`
--

INSERT INTO `information_pages` (`id`, `title`, `url`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'Çerez Polikası', 'cerez-polikasi', '<p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">www.bidolu.com (Bundan sonra “İnternet Sitesi” olarak anılacaktır.) ve Şans Basım San. ve Tic. A.Ş., Kullanıcılar’ın gizliliğini korumak ve kullanılan teknolojik altyapıdan en üst seviyede yararlanması ile güvenliğin sağlanabilmesi amacıyla çeşitli gizlilik ilkeleri belirlemiştir. Çerez Politikamız da Gizlilik Politikamızın bir parçasını oluşturur. Kullanıcılar, İnternet Sitesi üzerinden Gizlilik Politikası metnini onaylayarak İnternet Sitesi’ni ilk ziyaretlerinden itibaren, aşağıda yazılı olan ve İnternet Sitesi’nin ziyaret edilmesine ve/veya kullanılmasına ilişkin önemli bilgiler içeren hususları bütünüyle anlamış ve tamamını ayrılmaz bir bütün olarak kabul etmiş olurlar.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi, çevrimiçi servisleri, interaktif uygulamaları, e-posta mesajları ve reklamları, çerezleri (cookie) ve diğer teknolojileri kullanabilir. Bu teknolojiler size en kaliteli hizmeti sağlamak, davranışlarınızı daha iyi anlamak ve hizmetlerimizi daha kolay sunmak amacıyla kullanılmaktadır. Çerezler ve diğer teknolojiler İnternet Sitesi’ni ziyaret ettiğiniz zaman kişisel bilgilerinizi anımsatır. Bununla amacımız size kullanım kolaylığı sağlamak, vermiş olduğunuz siparişlere ulaşabilmenizi sağlamak ve bir sonraki ziyaretinizde sizi ve kişisel bilgilerinizi anımsayarak size daha özel bir hizmet sunabilmektir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi’nde bulunduğunuz süre boyunca \'cookie\' olarak adlandırılan çerezlerin ve buna benzer başkaca unsurların tarayıcınıza yerleştirilmesi söz konusu olabilir. Tarayıcınızdan çerez ayarlarını değiştirmeksizin İnternet Sitesi’ni kullanmaya devam ederek çerez kullanımına izin vermektesiniz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi’nde, “oturum çerezleri” ve “kalıcı çerezler” olarak adlandırılan çerezlerin dışında, kalıcı ve oturum çerezlerinin kullanılması aracılığıyla İnternet Sitesi’nin trafiğinin izlenmesi ve raporlanarak kullanıcı deneyiminin daha iyi analiz edilmesi sağlamak amacıyla Google Analytics çerezleri kullanılmaktadır.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Çerezleri bilgisayarınızdan dilediğiniz zaman silebilir ya da engelleyebilirsiniz. Çerezler, kullanıcı davranışlarını anlamak, üyelerimizin İnternet Sitesi’nin hangi bölümlerini ziyaret ettiklerini göstermek, reklamların ve aramaların etkinliğini ölçmek amacıyla kullanılmaktadır. Şans Basım San.ve Tic. A.Ş., bu bilgileri pazarlama ve reklam hizmetlerinde de kullanabilir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Bu Çerez Politikamızı herhangi bir bildirimde bulunmadan güncelleyebileceğimizi, bu sebeple Çerez Politikamızı çeşitli zamanlarda yeniden incelemeniz gerektiğini belirtmek isteriz.</p>', 0, 1, '2018-08-16 09:48:07'),
(2, 'İade / Değişim', 'iade---degisim', '<h3 style="text-align: justify; margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-weight: 600; line-height: 1.2; color: rgb(33, 37, 41); font-size: 23px;">Teslimat ve İade</h3><h5 style="text-align: justify; margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.25rem;">Sipariş İptali</h5><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">İnternet Sitemizde sunulan ürünlerden sipariş edebilmek için üye olmanız ve siparişinizi belirledikten sonra tasarım dosyalarınızı, PDF, PSD, AI, INDD, SVG, EPS formatlarında yüklemeniz gerekmektedir. Gönderdiğiniz dosya baskıya uygun ise İnternet Sitesinde kayıtlı olan e-posta adresinize bir onay e-postası gönderilecektir. Bu onay e-postası tarafınıza ulaşmadan önce siparişinizi herhangi bir tazminat ödemeksizin iptal edebilirsiniz. Bunun için talebinizi musteridestek@bidolu.com adresine e-posta ile veya internet sitesinde belirtilen \'Müşteri Hizmetleri\' telefon numarası vasıtası ile iletmeniz gerekmektedir. Siparişin bu şekilde iptali durumunda, siparişinize ilişkin yaptığınız ödemenin iadesi, iptal talebinin tarafımıza ulaşmasından itibaren 10 gün içinde, ödeme yönteminize bağlı olarak kredi kartınıza veya banka hesabınıza aktarılacaktır.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Onaya ilişkin e-postanın tarafınıza gönderilmesinden sonra ve/veya gönderdiğiniz dosyanın baskıya alınmasından sonra siparişin iptali ve ödeme iadesi imkanı bulunmamaktadır.</p><h5 style="text-align: justify; margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.25rem;">İade Koşulları</h5><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Baskılı Ürünler haricindeki tüm siparişlerinizi, siparişinizin tarafınıza tesliminden itibaren 14 gün içinde satın aldığınız ürünü iade edebilirsiniz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Tarafınızca gönderilen dosyaya uygun olarak basılmış Baskılı Ürünler’de ise iade imkanı bulunmamaktadır. Bununla birlikte, bu ürünlerde yalnızca tarafımızdan kaynaklanan bir sorunun doğması halinde, ilgili ürün talebiniz ve değerlendirmemiz üzerine tekrar baskıya alınacak ve değişiklik talebinin kabulünde belirtilen sürede teslim edilecektir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Ürünlerin bizden kaynaklanan bir sebeple tekrar baskıya alınması halinde, ürünün tarafınızca onay verildiği şekilde tekraren baskıya alınacağını ve bu kapsamda gönderdiğiniz belgede düzeltme yapılmayacağını da ayrıca belirtmek isteriz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Kullanılmış ve hasar görmüş ürünler ile tek kullanımlık ürünler, hızlı bozulan veya son kullanma tarihi geçme ihtimali olan ürünler iade edilememektedir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Hazır şablonlarımız üzerinden tasarladığınız ya da yüklediğiniz tasarımlardaki kullanıcı kaynaklı sorunlardan tarafımız sorumlu değildir. Böyle bir sorunla karşılaşmamak için sipariş vermeden önce tasarımlarınızı kontrol ediniz. Bu sebeple iade edilmek istenen ürünlerin iadesi kabul edilmemektedir.</p><h5 style="text-align: justify; margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.25rem;">İade İşlemleri</h5><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">İade işleminin yapılabilmesi için siparişiniz ile birlikte size teslim edilen faturanın arka yüzünde bulunan iade formunun eksiksiz olarak doldurularak Aras Kargo ile (4442552) aşağıdaki adrese ‘Karşı Ödemeli’ olarak göndermeniz gerekmektedir. Ek olarak iade işlemleriniz için elinize ulaşan ürünün görselleri ile birlikte ayrıntılı bir şekilde musteridestek@bidolu.com mail atmanız gerekmektedir.:</p><div class="col-sm-6 col-md-6 col-lg-6 col-xs-10" style="width: 555px; padding-right: 15px; padding-left: 15px; flex: 0 0 50%; max-width: 50%; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;"><p style="margin-bottom: 1rem; text-align: justify;">Şans Basım Sanayi ve Ticaret A.Ş.&nbsp;<br><br>Esenkent Mah. Dudullu Org. San. Böl. 2. Cad. No:8 Ümraniye/İstanbul</p></div><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><br></p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><br></p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><br></p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Ürünün yukarıda belirtilen İade Koşulları’na uygunluğu Kalite Yönetim Departmanımız tarafından kontrol edilip iadeye uygun bulunması ve iade onayı verilmesini takiben 10 gün içinde, siparişinize ilişkin yaptığınız ödemenin iadesi, ödeme yönteminize bağlı olarak kredi kartınıza veya banka hesabınıza aktarılacaktır. Bankanıza bağlı olarak, iadenizi kredi kartınızda veya banka hesabınızda görmeniz birkaç gün sürebilir. Belirtilen iade süreci sadece hesabınızın bulunduğu bankaya bağlıdır ve bu kapsamda tarafımızın süreçle ilgili herhangi bir hak veya yetkisi bulunmamaktadır.<br></p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Kalite Yönetim Departmanımız tarafından yapılan değerlendirme sonucunda iade talebinizin İade Koşulları’na uygun olmadığı belirlenip bu sebeple iade onayı verilmezse iade talebiyle gönderdiğiniz ürün 10 gün içinde karşı ödemeli olarak internet sitemizde kayıtlı olan adresinize yeniden gönderilecektir.</p>', 0, 1, '2018-08-16 10:49:16'),
(3, 'Gizlilik Politikası', 'gizlilik-politikasi', '<p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">www.bidolu.com (Bundan sonra “İnternet Sitesi” olarak anılacaktır.) ve Bidolu Basım San. ve Tic. A.Ş., Kullanıcılar’ın gizliliğini korumak ve kullanılan teknolojik altyapıdan en üst seviyede yararlanması ile güvenliğin sağlanabilmesi amacıyla çeşitli gizlilik ilkeleri belirlemiştir. Kullanıcılar, İnternet Sitesi üzerinden işbu Gizlilik Politikası metnini onaylayarak İnternet Sitesi’ni ilk ziyaretlerinden itibaren, aşağıda yazılı olan ve İnternet Sitesi’nin ziyaret edilmesine ve/veya kullanılmasına ilişkin önemli bilgiler içeren hususları bütünüyle anlamış ve tamamını ayrılmaz bir bütün olarak kabul etmiş olurlar.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi ve Bidolu Basım San.ve Tic. A.Ş., müşterilerine daha iyi hizmet verebilmek amacıyla bazı kişisel bilgilerinizi (isim, yaş, adres, telefon, e-posta vb.) talep etmektedir. Kişisel bilgiler, kişi adı-soyadı, unvanı, adresi, telefon numarası, e-posta adresi gibi kullanıcıyı tanımlamaya ve iletişim kurmaya yönelik her türlü bilgidir. İnternet Sitesi’ne kayıt yaptırıp sipariş verebilmeniz için ticari / kurumsal bilgilerle birlikte kişisel bilgilerinizi de paylaşmanız gerekmektedir. İnternet Sitesi’nin veri tabanında toplanan bu bilgiler, hizmetin ifası ve/veya daha iyi hizmet sunulması için kampanya çalışmalarında ve/veya müşteri profillerine yönelik özel promosyon faaliyetlerinde kullanılmaktadır. İnternet Sitesi üzerindeki faaliyetlerde, 6698 sayılı Kişisel Verilerin İşlenmesi Hakkında Kanun uyarınca, Kullanıcılar’a ait kişisel veriler, mevzuatta öngörülen usul ve esaslara uygun olarak İnternet Sitesi üzerinden sağlanan hizmetlerin verilebilmesi için bir sözleşmenin kurulması veya ifasıyla doğrudan doğruya ilgili olarak, ayrıca sözleşmenin taraflarına ait kişisel verilerin işlenmesinin gerekli olması nedeniyle açık rızanıza gerek bulunmaksızın, İnternet Sitesi’nin sahibi olan Bidolu Basım San.ve Tic. A.Ş. tarafından işlenmektedir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi, Kullanıcılar’dan topladığı bilgileri, ilgili Kullanıcı’nın haberi ya da aksi bir talimatı olmaksızın, üçüncü şahıslarla kesinlikle paylaşmamakta, faaliyet dışı hiçbir nedenle ticari amaçla kullanmamakta ve de satmamaktadır.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi, Kullanıcılar’a ait e-posta adresleri ve üyelik formları ile talep ettiği kişisel bilgilerin haricinde, Kullanıcılar’ın İnternet Sitesi’ni kullanımı sırasında izlediği, ziyaretçi hareket ve tercihlerini analiz ederek yorumlamaktadır. Kişisel bilgiler içermeyen bu istatistiksel veriler, İnternet Sitesi müşterilerine daha özel ve etkin bir alışveriş deneyimi yaşatmak amacıyla, İnternet Sitesi ve Bidolu Basım San.ve Tic. A.Ş. iş ortakları ile paylaşılabilmektedir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Kullanıcı bilgileri, ancak resmi makamlarca usulü dairesinde bu bilgilerin talep edilmesi halinde ve yürürlükteki emredici mevzuat hükümleri gereğince, resmi makamlara açıklama yapmak zorunda olduğu durumlarda resmi makamlara açıklanmaktadır. Kullanıcılar’ın İnternet Sitesi’ne girdiği tüm bilgilere sadece Kullanıcı tarafından değiştirilebilmektedir. Bu kapsamda, İnternet Sitesi’ne üye olurken vermiş olduğunuz kişisel bilgilerinizi kayıt olduktan sonra değiştirebilir, yanlışlıkları düzeltebilir ve gerekli düzenlemeleri yaparak iletişim bilgilerinizin ve tercihlerinizin doğru, eksiksiz ve güncel olmasını sağlayabilirsiniz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi üzerinden vereceğiniz siparişler için sizden bir ödeme şekli seçmeniz istenecektir. Tarafınızca her ne ödeme yöntemi seçilirse seçilsin, kredi kartı bilgileriniz İnternet Sitesi ve/veya Bidolu Basım San.ve Tic. A.Ş. tarafından sunucularda tutulmamaktadır. Bu kapsamda, ödemeye yönelik tüm işlemlerin İnternet Sitesi üzerinden banka ve bilgisayarınız arasında gerçekleşmesi sağlanmaktadır. İnternet Sitesi üzerinden satın alma işlemi gerçekleştirdiğinizde, işleminizi gerçekleştirmek için İnternet Sitesi üzerinden paylaştığınız kişisel bilgiler, kart bilgileri ve benzeri bilgiler, işlemin gerçekleştirilebilmesi için gerekli olan üçüncü kişiler (bankalar, kredi kartı şirketleri vb.) ile paylaşılabilir. Kişisel bilgilerinizin tamamı veya bir kısmı da, tarafınıza satın aldığınız ürünün gönderilebilmesi için kargo firması ile paylaşılmaktadır.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Kişisel bilgiler ayrıca İnternet Sitesi’nin kullanımını geliştirmek, hizmetlerimizi, içeriğimizi ve reklamlarımızı tasarlamak, sunmak amacıyla ve müşteri iletişimini geliştirmek için denetim, veri analizi ve araştırma gibi amaçlarla kullanılabilir. Kişisel bilgileriniz çalışanlarımızla veya üçüncü partilerle siparişin iletilme aşamalarının herhangi birinde paylaşılabileceği gibi siparişleriniz hakkındaki mesajlar, kurallar, koşullar ve politikalarımızdaki değişiklikler gibi önemli uyarıları göndermek için kullanılabilecektir. Herhangi bir bireyle doğrudan ilişkisi olmayan veriler niteliğindeki kişisel olmayan bilgileriniz de toplanabilmektedir. Kişisel olmayan bilgileriniz herhangi bir amaç için toplanılabilir, aktarılabilir, kullanılabilir ve açıklanabilir. Örneğin siparişler ile ilgili ödeme şekli, sipariş detayları, sipariş tutarı, kullanılan indirim kuponları gibi bilgiler kişisel olmayan bilgilerdir. Bu bilgiler, çalışanlarımızla veya ilgili üçüncü partilerle siparişinizin iletilme aşamalarından herhangi birinde paylaşılabilir veya İnternet Sitesi’ni kullanımınız analizinde ve desteğinde kullanılabilir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi’nden ve hizmetlerimizden müşteri faaliyetlerine ilişkin bilgiler toplanabilmektedir. İnternet Sitesi’nde dolaştığınız sayfalar, tıkladığınız buton ve bağlantılara ilişkin navigasyon ve tıklama bilgileri, IP bilgileri, kullanım süreniz müşteri faaliyetlerine örnek olarak gösterilebilir. Bu bilgiler bir araya getirilerek müşterilerimize daha faydalı bilgiler sağlamak ve analiz için kullanılabilir. İşbu Gizlilik Politikası bakımından kişisel olmayan bilgi olarak değerlendirilmeyen bu bilgiler, reklam ve pazarlama hizmetlerinde kullanabilecektir. İnternet Sitesi, kanunen daha uzun bir saklama süresi gerekmediği veya müsaade edilmediği sürece kişisel bilgilerinizi işbu Gizlilik Politikası’nda belirtilen amaçları gerçekleştirmek için kanunen geçerli olan süre boyunca saklamaktadır.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi, çevrimiçi servisleri, interaktif uygulamaları, e-posta mesajları ve reklamları, çerezleri (cookie) ve diğer teknolojileri kullanabilir. Bu teknolojiler size en kaliteli hizmeti sağlamak, davranışlarınızı daha iyi anlamak ve hizmetlerimizi daha kolay sunmak amacıyla kullanılmaktadır. Çerezler ve diğer teknolojiler İnternet Sitesi’ni ziyaret ettiğiniz zaman kişisel bilgilerinizi anımsatır. Bununla amacımız size kullanım kolaylığı sağlamak, vermiş olduğunuz siparişlere ulaşabilmenizi sağlamak ve bir sonraki ziyaretinizde sizi ve kişisel bilgilerinizi anımsayarak size daha özel bir hizmet sunabilmektir. Çerezleri bilgisayarınızdan dilediğiniz zaman silebilir ya da engelleyebilirsiniz. Çerezler, kullanıcı davranışlarını anlamak, üyelerimizin İnternet Sitesi’nin hangi bölümlerini ziyaret ettiklerini göstermekte reklamların ve aramaların etkinliğini ölçmektedir. Bidolu Basım San.ve Tic. A.Ş., bu bilgileri pazarlama ve reklam hizmetlerinde de kullanabilir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">İnternet Sitesi içeriğinde ve Bidolu Basım San.ve Tic. A.Ş’ye ait olmayan başkaca internet sitelerine bağlantı veya referans yer alabilir. Eğer İnternet Sitesi üzerinden başka bir kullanıcıyla ya da üçüncü tarafların bağlantılarını (link’lerini) kullanarak üçüncü kişilere ait internet siteleri ile bilgilerinizi paylaşırsanız, bu internet sitelerine sağlayacağınız bilgiler için farklı gizlilik politikaları geçerli olabilir. İnternet Sitesi ve Bidolu Basım San.ve Tic. A.Ş, bu sitelerin içerikleri veya içerdikleri diğer bağlantılardan sorumlu değildir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">6698 sayılı Kişisel Verilerin İşlenmesi Hakkında Kanun uyarınca, Kullanıcılar, İnternet Sitesi’ne üye olmaları sebebiyle; kişisel verilerinin işlenip işlenmediğini ve kişisel verilerinin işlenme amacını ve bunların amacına uygun kullanılıp kullanılmadığını öğrenme, yurt içinde veya yurt dışında aktarıldığı üçüncü kişileri bilme ve bu konularda info@bidolu.com e-posta adresi vasıtası ile bilgi talep etme; kişisel verilerine ilişkin herhangi bir eksiklik veya yanlışlık bulunması halinde bu yanlışlığın giderilmesini isteme; kişisel verilerin silinmesini veya yok edilmesini isteme ve bu durumun kişisel verilerin aktarıldığı üçüncü kişilere de bildirilmesini talep etme haklarını haizdir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Bidolu Basım San. ve Tic. A.Ş, işbu gizlilik politikası hükümlerini, dilediği zaman İnternet Sitesi’nde sitesinde yayınlamak suretiyle tek taraflı olarak değiştirebilir. Değiştirilen gizlilik politikası hükümleri, İnternet Sitesi’nde yayınlandığı tarihte yürürlüğe girer.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Bidolu Basım San. ve Tic. A.Ş tarafından atanacak Veri Sorumlusu veya temsilcisi, yasal altyapı sağlandığında Veri Sorumluları Sicili’nde ilan edilerek mevzuata uygun şekilde www.bidolu.com alan adlı internet sitesinden duyurulacaktır.</p>', 0, 1, '2018-08-16 10:49:43'),
(4, 'Kargo', 'kargo', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; text-align: justify;">Bidolu.com\'un tüm kargo gönderim hizmeti Aras Kargo güvencesiyle verilmektedir. Tüm alışverişlerinizde ücretsiz kargo fırsatı ile gönderim yapılmaktadır.</span><br></p>', 0, 1, '2018-08-16 10:50:42'),
(5, 'Kullanım Koşulları', 'kullanim-kosullari', '<p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Lütfen, Bidolu Basım San. ve Tic. A.Ş.’ye ait olan www.bidolu.com alan adlı internet sitesini (Bundan sonra kısaca ‘İnternet Sitesi’ olarak anılacaktır.) kullanmadan önce aşağıda yazılı olanları dikkatli bir şekilde okuyunuz. İnternet Sitesini ilk ziyaretinizden itibaren, aşağıda yazılı olan ve İnternet Sitesi’nin ziyaret edilmesine ve/veya kullanılmasına ilişkin önemli bilgiler içeren hususları bütünüyle anlamış ve tamamını ayrılmaz bir bütün olarak kabul etmiş sayılırsınız.. İnternet Sitesini kullanmanız ve kişisel bilgilerinizin yer alacağı formu doldurmanız bu sayfalarda yazılı şartları kendi iradenizle peşinen kabul ettiğiniz anlamına gelmektedir.</p><ol style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; font-size: 16px;"><li style="font-size: 14px; text-align: justify; margin-top: 25px;">1. Genel Koşullar</li></ol><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San. ve Tic. A.Ş. İnternet Sitesi üzerinden, Kullanıcılar’ın İnternet Sitesi’nde sunulan ürünlere ulaşması ve/veya kendi tasarımlarını İnternet Sitesi’ne yükleyerek üretilen baskılı ürünlerin satın alması hizmetlerini vermektedir. Bidolu Basım San. ve Tic. A.Ş. tarafından sunulan hizmetlerin değiştirilmesi, bu hizmetlere yeni hizmetler eklenmesi, kapsam ve sunulma koşullarının değiştirilmesi yalnızca ve sadece Bidolu Basım San. ve Tic. A.Ş.’nin inisiyatifindedir. Bidolu Basım San. ve Tic. A.Ş., bu yetkisini herhangi bir bildirimde bulunmadan tek taraflı olarak dilediği biçimde ve dilediği zaman kullanabilir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San.ve Tic. A.Ş. ve İnternet Sitesi, ödemesi tam olarak yapıldıktan sonra Kullanıcılar tarafından gönderilen dosyaları, her ürünün açıklamasında yer alan baskı seçeneklerindeki fire oranlarına uygun olarak ve teslim tarihi içerisinde basıp göndermekle yükümlüdür. Bidolu Basım San. ve Tic. A.Ş. ve İnternet Sitesi, herhangi bir tasarım hizmeti vermediği gibi, Kullanıcılar tarafından gönderilen tasarımları kontrol etmek veya değiştirmek ile de yükümlü değildir. Bu kapsamda Kullanıcılar, siparişlerinin yüklenebilmesi ve baskıya geçmesi için İnternet Sitesi’nde gösterilen ödemeyi eksiksiz olarak ve tek seferde yapmakla yükümlüdür. Baskı için onay verildikten sonra değişiklik, iade ve iptal işlemi mümkün değildir. Bu nedenle, Kullanıcılar tarafından onay verilen işlerde ve ürünlerde oluşabilecek tasarım hatalarından Bidolu Basım San.ve Tic.A.Ş. ve İnternet Sitesi hiçbir şekilde sorumlu tutulamaz.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, Bidolu Basım San. ve Tic. A.Ş.’nin İnternet Sitesi’nin ilgili bölümlerine girilen hiçbir bilgiyi kontrol etmekle yükümlü olmadığını ve Kullanıcılar tarafından verilen bilgilerin doğruluğunu hiçbir koşul altında taahhüt etmediğini peşinen kabul ederler. Bununla birlikte Kullanıcılar, İnternet Sitesi üzerinden verilen hizmetlerin talep edilen şekilde verilebilmesi için İnternet Sitesi’ne kendilerine ait, gerçek ve eksiksiz bilgileri vermekle yükümlü olduklarını; aksi taktirde, İnternet Sitesi’nden satın aldıkları ürünlerin adreslerine ulaşmaması da dahil olmak, ancak bununla sınırlı olmamak üzere çeşitli sorunların doğabileceğini kabul ederler. Bu kapsamda, Kullanıcılar, İnternet Sitesi’ne girdikleri bilgilerin tam, doğru ve gerçeğe uygun olduklarını ve söz konusu bilgileri yanlış vermelerinden dolayı Bidolu Basım San. ve Tic. A.Ş.’nin doğmuş ve doğacak her türlü zararını karşılamakla yükümlü olacaklarını kabul ve taahhüt ederler.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Ürünlere ait kargo bilgileri ve teslimatın takibine ilişkin uyarı, İnternet Sitesi tarafından Kullanıcılar’ın kayıt veya satın alma anında verdikleri e-posta adresine bildirilecektir. Kullanıcılar’ın İnternet Sitesi’ndeki ilgili bölüme e-posta adreslerini hiç, tam veya gerçeğe uygun şekilde girmemeleri halinde Kullanıcılar, Bidolu Basım San. ve Tic. A.Ş.’nin kendilerine kargo bilgileri ve Mesafeli Satış Sözleşmesi de dahil olmak ve fakat bunlarla sınırlı olmamak üzere hiçbir bildirimde bulunamayacağını peşinen kabul eder.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San. ve Tic. A.Ş., başta 6098 sayılı Türk Borçlar Kanunu, 6102 sayılı Türk Ticaret Kanunu ve 5651 sayılı Kanun ile yürürlükteki diğer ilgili mevzuat uyarınca kendisine getirilen yükümlülüklere uymak amacıyla Kullanıcılar’ın İnternet Sitesi üzerinde gerçekleştirdikleri işlemleri yasal süresi içinde kayıt altına almakta ve saklamaktadır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San. ve Tic. A.Ş., İnternet Sitesi üzerinden Kullanıcılar tarafından kendisine iletilen bilgileri Gizlilik Politikası’nda belirlenen kurallar uyarınca ve yürürlükteki mevzuata uygun olarak kullanabilir, ifşa edebilir, üçüncü kişilerle paylaşabilir, bu bilgileri işleyebilir, paylaşabilir, bir veri tabanı üzerinde tasnif edip saklayabilir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar İnternet Sitesi üzerinde yalnızca hukuka uygun işlemler yapabilirler. Kullanıcılar’ın İnternet Sitesi dâhilinde yaptığı her işlem ve eylemdeki hukuki ve cezai sorumluluk bizzat ve sadece kendilerine aittir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi’nden 18 yaşından küçük kişiler alışveriş yapamazlar. İnternet Sitesi’nde 18 yaşın altındaki kişilere yönelik ürünler satışa sunulabilir; ancak bu ürünler kanunen reşit kişiler tarafından satın alınmak üzere satışa sunulmuştur.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, İnternet Sitesi’nde yer alan elektronik metin, görsel ve işitsel imgeler, dosyalar, kataloglar ve listeler de dahil olmak üzere hiçbir içeriği çoğaltmayacaklarını, kopyalamayacaklarını, dağıtmayacaklarını, işlemeyeceklerini kabul ve taahhüt etmektedir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi üzerinden erişilen ve/veya görüntülenen her neviden içerikler Bidolu Basım San. ve Tic. A.Ş.’nin öncül ve yazılı onayı olmadan üçüncü kişilerce İnternet Sitesi dışında başta internet olmak üzere herhangi bir ortamda kullanılamaz ve görüntülenemez; aksi haller hukuka aykırı kullanım teşkil edecektir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi üzerinden erişilen ve/veya görüntülenen içeriklerin depolandığı veri tabanına üçüncü kişilerce yalnızca ilgili içeriklerin görüntülenmesi amacıyla ve/veya Bidolu Basım San. ve Tic. A.Ş.’nin yazılı olarak izin verdiği şekilde ve kapsamda erişilmesi hukuka uygun olarak kabul edilir. Bunun dışında yapılan erişimler hukuka aykırı olup Bidolu Basım San. ve Tic. A.Ş.’nin dava ve takip hakları her zaman için saklıdır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İçeriklerin ve ara yüzün Bidolu Basım San. ve Tic. A.Ş.’nin yazılı onayı olmadan kopyalanması, çoğaltılması, iletilmesi, işlenmesi ve başka internet sitelerinde ve/veya mecralarda görüntülenmesi yasaktır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi üzerinden başka internet sitelerine bağlantılar ve/veya yönlendirmeler sağlanabilir. Bu bağlantıların varlığı, İnternet Sitesi dışındaki diğer site ve sayfaların içeriklerinin denetlendiğini göstermez. Bu bağlantılardan erişilebilecek İnternet Sitesi dışında kalan içeriklerden dolayı Bidolu Basım San. ve Tic. A.Ş.’nin herhangi bir sorumluluğu bulunmadığı gibi, erişilen diğer internet sitelerinde yapılacak işlemlerden doğacak zarardan da Bidolu Basım San. ve Tic. A.Ş. sorumlu değildir. Kullanıcılar bu bağlantıları kullanarak diğer internet sitelerine eriştiklerinde, sorumluluğun kendilerinde olduğu peşinen kabul ederler.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi’ne yüklenmiş olan dosyaların içeriğinden yola çıkarak yapılabilecek hiçbir uygulamadan Bidolu Basım San. ve Tic. A.Ş. hukuki ve cezai olarak sorumlu değildir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, İnternet Sitesi’nde satışa sunulan ürünlerin fiyatlarını, kendilerine sunulan ödeme ekranlarını takip ederek satın alırlar. Kullanıcılar, ürünleri İnternet Sitesi’nde belirtilen fiyattan almayı, ürünün fiyatından kendilerine özel indirim talep etmeyeceklerini, İnternet Sitesi’nde ilan edilen ödeme koşullarına aykırı davranmayacaklarını peşinen kabul, beyan ve taahhüt ederler.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, ürünleri kendilerine sunulan ödeme seçeneklerinden ve ödeme yöntemlerinden birini kullanarak satın alırlar. Bidolu Basım San. ve Tic. A.Ş., kredi kartı ve diğer yöntemlerle yapılan satışlara ilişkin promosyon, reklam ve taksitle ödeme imkanlarını İnternet Sitesi’nden duyurur. Bununla birlikte, Bidolu Basım San. ve Tic. A.Ş.’in bankalar tarafından yapılan promosyon, reklam, taksitle ödeme imkanı gibi ödeme kolaylıkları bakımından hiçbir sorumluluğu yoktur.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Ürünlerin teslimatından sonra Kullanıcılar’ın yaptıkları ödemenin ilgili banka veya finans kuruluşu tarafından herhangi bir sebeple ödenmemesi, iptali veya Bidolu Basım San. ve Tic. A.Ş. hesaplarından geri çekilmesi hallerinde ürünlerin teslimi de gerçekleştirilmez ya da gerçekleştirilmişse ilgili Kullanıcı ürünleri kullanmadan ve derhal Bidolu Basım San. ve Tic. A.Ş.’ye iade etmekle yükümlüdür.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar’ın kendilerine teslim edilen ürünleri kontrol etmesi esastır. Bu kapsamda Kullanıcılar, kendilerine teslim edilen ürünleri teslim anında kontrol etmekle ve ürünlerin ayıplı olması veya ürün paketinin hasarlı olması ürünleri hasar tespit tutanağı tutarak kargo şirketine iade etmekle yükümlüdür.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, terör ve terörizmin finansmanının, kara para aklama işlemlerinin önlenmesine yönelik tüm ulusal ve uluslararası mevzuata uymakta olduklarını, bilgileri dahilinde terör bağlantısı veya uzantısı olan veya olma ihtimali bulunan, ülkenin milli güvenliğine ve bütünlüğüne tehdit oluşturan, milletin huzurunu bozucu faaliyetler içerisinde yer alan, devletin açıkladığı tehdit/terör örgütü listelerinde yer alan, kara para aklama faaliyetinde bulunan veya bulunma şüphesi olan hiçbir kurum ve kuruluş ile bağlantısının olmadığını beyan, kabul ve taahhüt eder.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanım Koşulları ve İnternet Sitesi’nde yayınlanan diğer metinler olan eklerine aykırılık hallerinde Bidolu Basım San. ve Tic. A.Ş.’nin maddi ve manevi zararının tazminini talep hakkı saklıdır. Kullanım Koşulları ve ekleri, İnternet Sitesi’nin herhangi bir sebeple yayınının durması/durdurulması halinde bu süre boyunca askıda sayılır. Bu süreçte askıda kalan satış işlemleri için Kullanıcılar, ödedikleri bedelin iadesi haricinde bir tazmin talebinde bulunamaz.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar, işbu Kullanım Koşulları ve eklerinde sayılan kural ve yükümlülüklere aykırı davranmaları halinde Bidolu Basım San. ve Tic. A.Ş.’nin üyeliği sona erdirmek ve ilgili Kullanıcı’nın İnternet Sitesi’ne girişini engellemek de dahil olmak ve bununla sınırlı olmamak üzere her türlü hakkını saklı tuttuğunu peşinen kabul, beyan ve taahhüt ederler.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanım Koşulları ve ekleri, İnternet Sitesi’nde yapılan faaliyetin sona erdirilmesi halinde kendiliğinden yürürlükten kalkar. Bidolu Basım San. ve Tic. A.Ş., işini, ticari ortaklığını ve İnternet Sitesi alan adını da değiştirmeye, aynı faaliyeti başka bir alan adı üzerinden yürütmeye yetkili olup bu değişikliklerin Kullanım Koşulları ve eklerine herhangi bir etkisi olmayacaktır. Aynı zamanda Bidolu Basım San.ve Tic. A.Ş., İnternet Sitesi’nden sunulan hizmet, ürün, kullanma koşulları ile İnternet Sitesi’nde sunulan bilgileri önceden bir ihtara gerek olmaksızın değiştirme, İnternet Sitesi’ni yeniden organize etme, yayını durdurma hakkını saklı tutar. Değişiklikler sitede yayım anında yürürlüğe girer. Sitenin kullanımı ya da siteye giriş ile bu değişiklikler de kabul edilmiş sayılır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San. ve Tic. A.Ş.’nin, hiçbir koşulda İnternet Sitesi’nin kullanımı ve Kullanıcılar tarafından yüklenen içerikler konusunda sorumluluğu bulunmamaktadır. Bidolu Basım San. ve Tic. A.Ş.’nin bu tür eylemler neticesinde uğrayabileceği her tür zararının tazminini talep hakkı saklıdır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Bidolu Basım San. ve Tic. A.Ş., İnternet Sitesi’nin genel görünüm ve dizaynı ile İnternet Sitesindeki tüm bilgi, resim, “Bidolu” markası ve diğer markalar, alan adı, logo, ikon, demonstratif, yazılı, elektronik, grafik veya makinede okunabilir şekilde sunulan teknik veriler, bilgisayar yazılımları, uygulanan satış sistemi, iş metodu ve iş modeli de dahil tüm materyallerin ve bunlara ilişkin fikri ve sınai mülkiyet haklarının sahibi veya lisans sahibidir ve belirtilen tüm içerikler hukuken koruma altındadır. İnternet Sitesi’nde bulunan hiçbir içerik, önceden izin alınmadan ve kaynak gösterilmeden, kod ve yazılım da dahil olmak üzere, değiştirilemez, kopyalanamaz, çoğaltılamaz, başka bir lisana çevrilemez, yeniden yayımlanamaz, başka bir bilgisayara yüklenemez, postalanamaz, iletilemez, sunulamaz ya da dağıtılamaz. İnternet Sitesi’nin bütünü veya bir kısmı başka bir internet sitesinde izinsiz olarak kullanılamaz.</p><ol style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; font-size: 16px;"><li style="font-size: 14px; text-align: justify; margin-top: 25px;">2. Diğer Hükümler</li></ol><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İnternet Sitesi’nden erişilen içerikler ile Kullanıcılar’ın bilgileri İnternet Sitesi’nin, İnternet Sitesi’nin veri tabanının ve ara yüzünün, tasarımı, metinleri, kodları da dahil olmak ve bunlarla sınırlı olmamak üzere İnternet Sitesi’nin tüm bileşenleri Bidolu Basım San. ve Tic. A.Ş.’ye aittir ve/veya Bidolu Basım San. ve Tic. A.Ş. tarafından üçüncü bir kişiden hukuken geçerli bir lisans altında edinilmiştir. Bu kapsamda, Bidolu Basım San. ve Tic. A.Ş. tarafından açıkça yetki verilmediği hallerde Bidolu Basım San. ve Tic. A.Ş.’nin sayılan bileşenlerden ayrı ayrı ve/veya İnternet Sitesi’nden doğan her türlü hakkı saklıdır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Kullanıcılar tarafından İnternet Sitesi’ne yüklenmemiş olan her türlü resim, grafik, fotoğraf veya benzeri türden içerikler Bidolu Basım San. ve Tic. A.Ş.’ye aittir veya bu içerikler Bidolu Basım San. ve Tic. A.Ş. tarafından yasal sahiplerinden izin alınarak kullanılmaktadır. Bu içeriklerin izinsiz kullanılması, kopyalanması, dağıtılması, izinsiz paylaşılması, yeniden satılması veya İnternet Sitesi’nde açıkça belirtilmeyen sair şekillerde kullanımı; telif hakları ihlali, sınai mülkiyet haklarına tecavüz ve haksız rekabet başta olmak ve fakat bu sayılanlarla sınırlı olmamak üzere yürürlükteki mevzuatın ihlalini doğurabilir. Bidolu Basım San. ve Tic. A.Ş. böyle bir durumda ihlali, tecavüzü veya sair hukuka aykırılığı ortadan kaldırmak ve/veya yasal haklarını tesis amacıyla her türlü hukuki önlemi alma hakkını haizdir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">Mücbir sebep terimi, ilgili tarafın makul kontrolü haricinde ve gerekli özeni göstermesine rağmen önleyemediği olaylardır. Bunlarla sınırlı olmamakla birlikte; her türlü doğal afet, kötü hava koşulları; isyan, savaş, grev, lokavt ve terör olayları; iletişim sorunları, altyapı ve internet arızaları ve/veya kesintileri ve elektrik kesintisi, makine arızaları gibi durumlar da mücbir sebep olarak değerlendirilir. Bidolu Basım San. ve Tic. A.Ş., mücbir sebep hallerinde İnternet Sitesi’nden verilen hizmetten doğan yükümlülüklerinden herhangi birisini geç ifa etme ve/veya ifa etmeme nedeniyle hukuken sorumlu değildir. Bu ve bunun gibi durumlarda, Bidolu Basım San. ve Tic. A.Ş. bakımından, gecikme, ifa etmeme veya temerrüt sayılmayacak ve belirtilen durumlar bakımından Bidolu Basım San. ve Tic. A.Ş.’nin Kullanıcılar’ın herhangi bir zararını tazmin yükümlülüğü doğmayacaktır.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İşbu Kullanım Koşulları’nın uygulanmasında, yorumlanmasında ve bu Kullanım Koşulları kapsamında doğan hukuki ilişkilerin sevk ve idaresinde Türkiye Cumhuriyeti hukuku uygulanacak olup her türlü ihtilafın hallinde ise İstanbul Anadolu Mahkemeleri ve İcra Daireleri yetkilidir.</p><p style="font-size: 14px; text-align: justify; margin-top: 25px;">İşbu Kullanım Koşulları, Bidolu Basım San. ve Tic. A.Ş., tarafından İnternet Sitesi’nde ilan edildiği tarihte tüm Kullanıcılar bakımından yürürlük kazanmaktadır. İnternet Sitesi’nde yayınlanan Mesafeli Satış Sözleşmesi, İade Politikası ve Gizlilik Politikası metinleri başta olmak üzere tüm metinler işbu Kullanım Koşulları’nın eki ve ayrılmaz bir parçasıdır. Bidolu Basım San. ve Tic. A.Ş., ayrıca herhangi bir bildirimde bulunmaksızın, işbu Kullanım Koşulları’nı ve eklerini dilediği zaman güncelleyebilir veya sair şekilde değiştirebilir.</p>', 0, 1, '2018-08-16 10:56:15');
INSERT INTO `information_pages` (`id`, `title`, `url`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(6, 'Mesafeli Satış Sözleşmesi', 'mesafeli-satis-sozlesmesi', '<p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">1. SÖZLEŞMENİN TARAFLARI</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">1.1. SATICI:&nbsp;</span>Unvanı: Bidolu Basım San. ve Tic. A.Ş.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Adresi: Beylikdüzü OSB Mahallesi 21.Cadde No:35 Beylikdüzü / İstanbul</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">İnternet Sitesi: www.bidolu.com</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">E-posta : info@bidolu.com</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Tel. No: 0555 555 5555</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Ticaret Sicil No: 123456</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">MERSİS No:&nbsp;1234567890987654</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">1.2. ALICI:&nbsp;</span>Adı Soyadı :</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Telefon:</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">Adresi :</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">E-posta:</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">IP Adresi:</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">2. SİPARİŞ KONUSU ÜRÜNLER</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">&nbsp;&nbsp;&nbsp;https://www.bidolu.com/tum-matbaa-baski-urunleri</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">3. SÖZLEŞMENİN KONUSU</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">3.1. İşbu Mesafeli Satış Sözleşmesi’nin (Bundan sonra kısaca ‘Sözleşme’ olarak anılacaktır.) konusu, Alıcı’nın Satıcı’ya ait www.bidolu.com alan adlı internet sitesinden (Bundan sonra kısaca ‘İnternet Sitesi’ olarak anılacaktır.) elektronik ortamda sipariş vererek satın aldığı, İnternet Sitesi’nde yazılı olan nitelikleri haiz ve satış fiyatı belirtilen ürünün satışı ve teslimi ile ilgili olarak Tarafların hak ve yükümlülüklerinin saptanmasıdır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">3.2. İşbu Sözleşme hükümleri, Taraflar 6102 sayılı Türk Ticaret Kanunu’nda belirtilen kapsamda tacir olduğundan ve Taraflar tacir olmasalar bile Sözleşme konusu iş "ticari iş" sayıldığından 6102 sayılı Türk Ticaret Kanunu ve 6098 sayılı Borçlar Kanunu’nun Genel Hükümlerine tâbidir. Sözleşme konusu işe 6502 sayılı Tüketicinin Korunması Hakkında Kanun ve ilgili ikincil mevzuat uygulanmaz. Bu kapsamda, Alıcılar bakımından, Tüketicinin Korunması Hakkında Kanun hükümleri anlamında ‘tüketici’ tanımı geçerli olmadığından, Alıcılar belirtilen mevzuat uyarınca tüketicilere tanınan başta cayma hakkı olmak üzere hak ve yetkilerden faydalanma hakkını haiz değildir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">3.3. Alıcı, yukarıda belirtilen satışa konu ürünün temel nitelikleri, satış fiyatı, adedi, ödeme şekli, teslimat koşulları ve benzeri satışa konu ürün ile ilgili tüm bilgiler ile iptal ve iade koşulları konusunda bilgi sahibi olduğunu, bu bilgileri elektronik ortamda kendi iradesiyle teyit ettiğini ve sonrasında ürünü sipariş vererek satın aldığını kabul ve beyan eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">3.4. İnternet Sitesi’nde ödeme sayfasında yer alan ön bilgilendirme formu ve proforma fatura ile Kullanım Koşulları ile Gizlilik Bildirimi işbu Sözleşme’nin eki ve ayrılmaz parçalarıdır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">4. TARAFLARIN HAK ve YÜKÜMLÜLÜKLERİ</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">4.1. Satıcı, ödemesi tam olarak yapıldıktan sonra İnternet Sitesi üzerinden gönderilen tasarım dosyaları her ürünün açıklamasında yer alan baskı seçeneklerindeki fire oranları ve teslim tarihi içerisinde basıp eksiksiz olarak göndermekle yükümlüdür.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">4.2. Alıcı, İnternet Sitesi’ne üye olurken ve sipariş sırasında isim, soy isim, şirket unvanı, e-posta adresi, telefon, adres, fatura bilgileri gibi kendisinden talep edilen tüm bilgileri hukuka uygun, güncel, doğru ve eksiksiz olarak bildirmekle yükümlüdür.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">5. SİPARİŞ(LER)E İLİŞKİN HÜKÜMLER</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.1. İşbu Sözleşme’nin tarafları Alıcı ile Satıcıdır. Bu kapsamda, işbu Sözleşme’nin yerine getirilmesi ile ilgili tüm yükümlülük ve sorumluluklar Sözleşme’nin taraflarına aittir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.2. Alıcı, www.bidolu.com alan adlı internet sitesinde sunulan ürünlerden sipariş edebilmek için İnternet Sitesinde talep edilen bilgileri girmek zorundadır. Alıcı’nın üye olmadan sipariş vermesi halinde Alıcı Kullanım Koşulları, Gizlilik Politikası ve gerekli diğer belgeleri onaylayarak siparişin sonunda İnternet Sitesi’ne üye olmaktadır. Alıcı her zaman ve ayrıca hiçbir gerekçe göstermeksizin üyeliğini sona erdirebilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.3. Alıcı sipariş etmek istediği baskılı ürünler için; basılı materyalin cinsi, ebat, renk, adet gibi seçenekleri işaretleyerek ve tasarımını yükleyerek ürün siparişini verebilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.4. Alıcı, sipariş ettiği ürünlerin hazır veya kişiye özel veyahut da kuruma özel sipariş olup olmamasına göre iade etme koşullarının değişeceğini peşinen kabul eder. Bu kapsamda Alıcı, ürünlerin tüzel veya gerçek kişi ayrımı bulunmaksızın, kendisine özel olarak hazırlanması durumunda ürünleri iade etme hakkını haiz olmadığını peşinen kabul eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.5. Alıcı, siparişini belirledikten sonra tasarım dosyalarını, ürünü sepete attıktan sonra PDF, PSD, AI, INDD, SVG, EPS formatlarında siteye yükleyebilir. Tasarımın baskıya ve siparişe uygunluğu kontrol edildikten sonra, Alıcı’dan elektronik iletişim yoluyla siparişin tasarımının baskıya uygunluğuna ilişkin onay alınacak, siparişi verirken girdiği e-posta marifeti veya internet sitesi üzerindeki onay butonu aracılığı ile onay alındıktan sonra Alıcı’nın siparişi baskıya alınacaktır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.6. Alıcı satın alma işlemini gerçekleştirdikten tamamladıktan sonra, en geç 7 (yedi) gün içinde, tasarımın çözünürlük, yerleşim, kesim payı gibi konularda baskıya uygunluğu kontrol edilir ve gerekli ise bu konularla ilgili düzeltmeler yapılır. Baskıya uygun son hali ve siparişin uygunluğu kendisine e-posta ile gönderilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.7. Alıcı 7 (yedi) gün içinde kendisine gönderilen baskıya en uygun hale getirilen tasarımı onaylamalıdır. Tasarım verilen süre içinde onaylanmadığı takdirde, tasarım Alıcı tarafından ilk oluşturulduğu hali basılır ile teslim edilir. Alıcı, İnternet Sitesi’nde sunulan ürünlerin niteliği ve tasarımı gereği, ürünün basılabilmesi için kendisine sunulan seçenekleri okumak ve gerektiğinde kendisine yöneltilen seçeneklerden tercihte bulunmak durumundadır. Alıcı, ürünü seçerken beyan ettiği ve seçtiği seçeneklerin hatalı olmasından ve ürünün İnternet Sitesi’nden seçtiği şekilde, kendi talebine göre &nbsp;hazırlanmasından kendisi sorumludur.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.8. Alıcı ürünü tüm nitelikleriyle seçtikten, tercihlerini tamamladıktan sonra, satın alma işlemi ödemenin yapılması ile tamamlanır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">5.9. Alıcı’nın tasarımı onaylamasının ardından, 30 (otuz) gün içinde sipariş konusu ürünler basılı olarak adresine teslim edilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">6. İPTAL ve İADE KOŞULLARI</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">6.1. İşbu Sözleşme kapsamında, kural olarak, Alıcı’nın özel istek ve talepleri uyarınca üretilen veya üzerinde değişiklik ya da ilaveler yapılarak Alıcı’ya özel hale getirilen ürün ve hizmetler söz konusu olduğundan bu ürünlerin iptali ve iadesi mümkün değildir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">6.2. Alıcı, sipariş uygunluğunu ve tasarımı onaylamadan ve satın alınan ürünler baskıya geçmeden siparişten tamamen vazgeçme hakkına sahiptir. Alıcı, bu vazgeçme talebini e-posta marifeti ile veya İnternet Sitesi’nde belirtilen ‘Müşteri Hizmetleri’ telefon numarası vasıtası ile Satıcı’ya zamanında bildirdiği takdirde, ürün bedeli kendisine 10 (on) iş günü içinde&nbsp;iade edilir ya da Alıcı’nın talebi veya onayı üzerine bu tutar hesabında tutulup daha sonraki siparişlerinde kullanılabileceği gibi, Alıcı’ya yine talebi üzerine bir kupon kodu tanımlanıp sonraki siparişlerinde kullanması sağlanabilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">6.3. Sipariş konusu ürünlerin, baskıya girilmeden iptal edilmek istenmesi halinde ilgili siparişler için, varsa o ana kadar yapılmış işlemlere ait (prova baskı, grafik düzenleme vs.) ücretler kesilerek tutar Alıcı’ya 10 (on) iş günü içinde iade edilecektir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">7. ÜRÜNLERİN TESLİMİ ve TESLİM ŞEKLİ</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">7.1. Sipariş konusu ürünler, aksi Alıcı tarafından ayrıca yazılı olarak belirtilmediği takdirde Alıcı’nın yukarıda belirtmiş olduğu adresinde Alıcı’ya teslim edilecektir. Alıcı, "Teslimat Bilgileri " ve "Alıcı" gibi siparişinin teslimatına dair verdiği bilgilerin doğru ve güncel olduğunu, siparişinin kendisi veya belirlediği alıcılar tarafından ancak kimlik ibrazı karşılığında teslim alabileceğini kabul, beyan ve taahhüt eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">7.2. Kural olarak teslimat masrafları Alıcı’ya aittir. Satıcı, İnternet Sitesinde, sistemde işlemin gerçekleştiği süre zarfında ilan ettiği tutarın üzerinde alışveriş yapanların teslimat ücretinin kendisince karşılanacağını ya da kampanya dahilinde ücretsiz teslimat yapacağını beyan etmişse, teslimat masrafı Satıcı’ya ait olacaktır. Bununla birlikte Satıcı, teslimatın hangi koşullarda kendisi tarafından karşılayacağını belirlemekte serbest olup teslimat ücretine ilişkin herhangi bir taahhütte bulunmamaktadır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">7.3. Teslimat; hazır ürünlerde stokların müsait olması, baskılı ürünlerde ise üretim süresine bağlı olarak ve sipariş konusu ürün bedelinin Satıcı’nın hesabına geçmesinden sonra 30 (otuz) günü geçmemek kaydıyla en kısa sürede yapılır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">7.4. Sipariş, Alıcı’nın ödeme bilgisi hakkında onay geldikten ve eğer Alıcı kendi tasarımını yüklemişse gönderilen çalışmanın baskıya uygunluğu konusunda elektronik ortamda onay alındıktan sonra verilmiş sayılacaktır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">7.5. Cumartesi ve Pazar günleri ile resmi tatil günlerinde verilen siparişler, ödeme bilgisinin onayını takip eden ilk iş günü verilmiş kabul edilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">8. AYIBA KARŞI SATICININ SORUMLULUĞU</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.1. Alıcı, 6102 sayılı Türk Ticaret Kanunu gereği; sipariş etmiş olduğu ürünlerin teslimi sırasında ayıp kontrolü yapmakla sorumludur.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.2. Alıcı, teslim edilen ürünler içerisinde açıkça görülen bir ayıp olması halinde 6102 sayılı Türk Ticaret Kanunu 23/c maddesi uyarınca, durumu Satıcı’ya 3 (üç) gün içerisinde ihbar etmekle yükümlüdür. Aksi halde Alıcı, 6098 Sayılı Türk Borçlar Kanunu’nun 223. maddesi gereğince, teslim edilen ürünü ayıplı hali ile kabul etmiş sayılacaktır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.3. Alıcı’nın, kendisine teslim edilen ürünlerde açıkça belli olmayan (gizli) ayıplara karşı denetim ve kontrol (ürünü incelemek ve/veya incelettirmek) yükümlülüğü ve teslim tarihinden itibaren 8 (sekiz) gün içerisinde ürünlerde bir ayıp tespit etmesi/ettirmesi halinde derhal Satıcı’ya ihbar etme yükümlülüğü bulunmaktadır. Aksi halde Alıcı, 6098 Sayılı Türk Borçlar Kanunu’nun 223. maddesi gereğince, teslim edilen ürünü ayıplı hali ile kabul etmiş sayılacaktır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.4. Alıcı,&nbsp;Ayıp ihbarı ile birlikte İnternet Sitesi üzerinden iade talebi oluşturarak, ürünü teslim almış olduğu şekli ile tam ve eksiksiz olarak Satıcı’ya göndermekle yükümlüdür. Alıcı’nın teslim edilen ürünü herhangi bir nedenle iade edebilmesi için; ürünün orijinal ambalajında muhafaza edilmesi, tüm ambalaj malzemeleriyle eksiksiz bir şekilde, fiziksel hasar görmeden aynen geri gönderilmesi gereklidir. Ayrıca, irsaliye ve faturanın tüm asıl ve kopyalarının da ürünlerle birlikte gönderilmesi gerekmektedir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.5. Teslimatı yapan taşıyıcıdan kaynaklı hasar dışında, paket açılmadan fark edilebilecek nitelikte herhangi bir hasar, eziklik, ıslaklık gibi normal olmayan bir durum varsa; Alıcı teslimat görevlisinden tutanak hazırlamasını talep etmelidir.&nbsp;</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.6. Satıcı, usulüne uygun olarak yapılan ihbar ve sonrasında ürünün kendisine teslimi ile birlikte gerekli kontrolleri yaparak; Alıcı’nın beyanlarında haklı olması halinde (oluşabilecek renk farklılığı, kayma gibi baskı sürecinde oluşabilecek her türlü hatalar) ayıplı ürünü değiştirerek veya yeniden basarak Alıcı’ya tüm masrafları kendisince karşılanmak üzere teslim eder. Alıcı, dilerse ücret iadesi de talep edebilir.&nbsp;Bu taktirde ücret iadesi 10 (on) iş günü içinde yapılacaktır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.7. İade edilen ayıplı ürünün yenisinin stoklarda kalmaması, yeniden basım imkanının olmaması, basılacak materyalin bulunamaması ya da benzeri zorlayıcı nedenler ile ayıpsız ürün ile değiştirme imkânının ortadan kalktığı durumlarda, Satıcı ürün bedelini Alıcı’ya, herhangi bir faiz veya masraf ödemeksizin, tahsil edilen yöntemle aynı şekilde iade edeceğini beyan ve taahhüt eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">8.8. Ürün iadesinde 213 sayılı Vergi Usul Kanunu ve ilgili mevzuat hükümleri saklı olup Alıcı ve Satıcı belirtilen hükümlere riayet etmekle yükümlüdür.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">9. FİYATLARA İLİŞKİN HÜKÜMLER:</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">9.1. Alıcı tarafından İnternet Sitesi’nden sipariş edilen ürünlerin ücreti İnternet Sitesi’nde ve Alıcı’ya gönderilen fatura içeriğinde belirtilmiştir. Aksi ayrıca belirtilmedikçe, fiyatlara KDV dahil değildir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">9.2. Alıcı’nın, kredi kartı ile ve taksitle alışveriş yapması durumunda İnternet Sitesi’nden seçmiş olduğu taksit biçimi geçerlidir. Taksitlendirme işlemlerinde, Alıcı ile kart sahibi banka arasında yürürlükte bulunan sözleşmenin ilgili hükümleri geçerlidir. Kredi kartı ödeme tarihi banka ile Alıcı arasındaki sözleşme hükümlerince belirlenmekte olup Satıcı’nın bu konuya ilişkin herhangi bir yükümlülüğü bulunmamaktadır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">10. SATICI’NIN BEYANLARI VE SORUMSUZ OLDUĞU HALLER</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.1. Satıcı, İnternet Sitesi’ndeki fiyatlar ve ürün, renk, materyal çeşitleri ile hazır tasarımlar ve de promosyonlar ve kampanyalar üzerinde dilediği zaman, ayrıca herhangi bir bilgilendirme yapma zorunluluğu bulunmaksızın değişiklik yapma ve/veya belirtilen tüm hususları iptal etme, silme, kullanıma kapatma hakkını saklı tutar. Alıcı, bu değişiklikler veya iptallerden dolayı uğrayacağı doğrudan ve/veya dolaylı zararlar için Satıcı’dan her ne nam altında olursa tazminat talep etmeyeceğini peşinen kabul ve beyan eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.2. Sipariş oluşturulurken Alıcı’nın göndermiş olduğu tasarımdaki tipografi hataları, imla hataları, yanlış yerleştirme, uygun olmayan çözünürlük, yanlış baskı materyali seçme, ölçü ve renk hataları gibi oluşacak sorunlardan Satıcı sorumlu tutulamaz.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.3. Satıcı, baskıya verilecek ürünlerde basılmak üzere hazırlanan içeriğin hukuka, ahlâka ve genel mevzuata uygun olup olmadığını inceleme yükümlülüğü bulunmamakla beraber, uygun görmediği içerikleri kabul etmeme ve bu yöndeki siparişi iptal etme hakkına sahiptir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.4. Sipariş oluşturulurken bilgisayar veya tablet ekranlarında görünen tasarım dosyasındaki renkler veya renk kartelalarından görülen renkler, basılmış üründe görünen renklerle birebir aynı olmamasından, tasarım dosyasındaki renkler ile basırı ürün arasında ton farkı bulunmasından Satıcı sorumlu tutulamaz.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.5. Satıcı, bazı baskılı ürünlerin dış mekan kullanımına uygun olmadığını, güneşe veya rutubete maruz bırakılmayacağını, bazı baskılı ürünlerin uygun saklama koşulları içinde bulundurulması gerektiğini bildiğini kabul eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.6. İşbu Sözleşme’nin konusu ile ilgili olarak, Sözleşme’nin Satıcı tarafından eksik ifası, ayıplı veya kusurlu ifası hallerinde Alıcı, herhangi bir müspet ve/veya menfi zarar ve kâr kaybı da dahil olmak üzere herhangi bir zararını talep etmeyeceğini kabul ve taahhüt eder. Bu kapsamda, Satıcı’nın işbu Sözleşme’den doğabilecek maddi sorumluluğu en fazla sipariş tutarı kadardır.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.7. Kullanıcılar, terör ve terörizmin finansmanının, kara para aklama işlemlerinin önlenmesine yönelik tüm ulusal ve uluslararası mevzuata uymakta olduklarını, bilgileri dahilinde terör bağlantısı veya uzantısı olan veya olma ihtimali bulunan, ülkenin milli güvenliğine ve bütünlüğüne tehdit oluşturan, milletin huzurunu bozucu faaliyetler içerisinde yer alan, devletin açıkladığı tehdit/terör örgütü listelerinde yer alan, kara para aklama faaliyetinde bulunan veya bulunma şüphesi olan hiçbir kurum ve kuruluş ile bağlantısının olmadığını beyan, kabul ve taahhüt eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">10.8. Satıcı, sözleşmenin ihlali, haksız fiil, ihmal veya diğer sebepler neticesinde; işlemin kesintiye uğraması, hata, ihmal, kesinti, silinme, kayıp, işlemin veya iletişimin gecikmesi, bilgisayar virüsü, iletişim hatası, hırsızlık, imha veya izinsiz olarak kayıtlara girilmesi, değiştirilmesi veya kullanılması hususunda herhangi bir sorumluluk kabul etmemektedir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">11. MÜCBİR SEBEPLER</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">11.1. Sözleşme’nin akdedildiği tarihte var olmayan ve Satıcı’nın kontrolü dışında gelişen, ortaya çıkmasıyla Satıcı’nın Sözleşme ile yüklendikleri borç ve sorumluluklarını kısmen ya da tamamen yerine getirmesini ya da bunları zamanında yerine getirmesini imkansızlaştıran haller, mücbir sebep (her türden doğal afet, savaş, terör, ayaklanma, mevzuat hükümlerinde değişiklik, el koyma, grev, lokavt, üretim ve iletişim tesislerinde önemli mahiyette arıza, yaygın ve/veya sürekli elektrik ve/veya internet kesintileri vb.) olarak kabul edilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">11.2. Mücbir Sebep durumunda Satıcı, işbu Sözleşme ile yüklenmiş olduğu edimleri tek taraflı olarak yerine getirmekten ödenen bedelin iadesini yaparak tazminatsız olarak kaçınabilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">11.3. Mücbir sebebin 45 (kırk beş) günden fazla sürmesi halinde Alıcı işbu Sözleşme’yi feshederek ödediği bedelin iadesini talep edebilir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">12. DAMGA VERGİSİ</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">12.1. İşbu Sözleşme, 29.09.2016 tarihli ve 29842 sayılı Resmi Gazete’de yayınlanan Damga Vergisi Kanunu Genel Tebliği’nin (Seri No: 60) 6/4 maddesi gereğince damga vergisine tâbi değildir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;"><span style="font-weight: bolder;">13. UYGULANACAK HUKUK VE YETKİLİ YARGI YERİ</span></p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">13.1 Taraflar arasında doğan/doğabilecek her türlü ihtilafta Satıcı’nın ticari defter, kayıt ve belgeleri ile bilgisayar, faks kayıtlarının, mikrofilmlerinin, e-posta yazışmalarının 6100 sayılı Hukuk Muhakemeleri Kanunu m. 193 uyarınca kesin delil hükmünde olacağını Alıcı gayrikabil-i rücu kabul, beyan ve taahhüt eder.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">13.2. İşbu Sözleşme Alıcı’nın ödeme yapmasından önce Taraflar arasında elektronik ortamda düzenlenmiş ve onaylanmıştır; bu kapsamda, işbu Sözleşme Taraflar arasında yazılı sözleşmenin yerine geçer ve 6100 sayılı Hukuk Muhakemeleri Kanunu gereğince elektronik belge hükmündedir.</p><p style="margin-bottom: 1rem; font-size: 15px; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;">13.3. İşbu Sözleşme’den doğan her türlü ihtilafın çözümünde İstanbul Anadolu Mahkemeleri ile İcra Daireleri yetkili ve görevli olup her türlü ihtilafın çözümünde Türkiye Cumhuriyeti hukuku uygulanacaktır.</p>', 0, 1, '2018-08-16 10:56:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_advertisements`
--

CREATE TABLE `job_advertisements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `sought_after_features` text NOT NULL,
  `keyw` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `job_advertisements`
--

INSERT INTO `job_advertisements` (`id`, `title`, `url`, `description`, `img_url`, `department`, `sought_after_features`, `keyw`, `address`, `isActive`, `createdAt`) VALUES
(1, 'deneme', 'deneme', '<p>deneme iş açıklaması</p>', 'videosinif-proje.png', 'deneme departman', '<p>deneme aranan özellikler</p>', 'deneme iş, deneme kelime', 'deneme iş adresi', 1, '2018-08-16 12:10:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_application`
--

CREATE TABLE `job_application` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_seo` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `cover_letter` text NOT NULL,
  `application_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `job_application`
--

INSERT INTO `job_application` (`id`, `name`, `name_seo`, `email`, `phone`, `cv`, `cover_letter`, `application_date`) VALUES
(1, 'Enes Erol', 'enes-erol', 'enesserol7@gmail.com', '5303718083', 'uploads/cv_v/enes-erol-deneme.txt', 'deneme ön yazı', '2018-06-27 19:50:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `offer_requests`
--

CREATE TABLE `offer_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `offer_requested_product` varchar(255) NOT NULL,
  `offer_requested_attributes` text NOT NULL,
  `dimensions` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `direction_of_printing` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `offer_requests`
--

INSERT INTO `offer_requests` (`id`, `name`, `email`, `phone`, `offer_requested_product`, `offer_requested_attributes`, `dimensions`, `weight`, `direction_of_printing`, `file`, `createdAt`) VALUES
(1, 'Enes Erol', 'enesserol7@gmail.com', '5303718083', 'Kartvizit', 'Çift yön dokulu baskı', ' 8.5x5 cm', '315 gr.', 'Ön Arka', 'uploads/offer_requests_v/enes-erol-deneme.txt', '2018-06-07 16:57:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `piece` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `kdv` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `shipping_tracking_number` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `billing_address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `customer_id`, `piece`, `unit_price`, `price`, `kdv`, `status`, `shipping_tracking_number`, `date`, `order_number`, `address`, `billing_address`) VALUES
(1, 2, 1, '5', '37,38', '186,90', '33,64', 'Onay Bekliyor', '', '2018-08-15 13:10:59', '54985', 'Beylikdüzü / İstanbul', 'Beylikdüzü / İstanbul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `other_addresses`
--

CREATE TABLE `other_addresses` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `address_title` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `other_addresses`
--

INSERT INTO `other_addresses` (`id`, `member_id`, `address_title`, `address`, `city`, `state`, `post_code`, `createdAt`) VALUES
(1, 1, 'İş Adresi', 'Beylikdüzü / İstanbul', 'İstanbul', 'Beylikdüzü', '34520', '2018-06-11 21:40:52'),
(2, 2, 'Ev Adresi', 'Beylikdüzü / İstanbul', 'İstanbul', 'Beylikdüzü', '32434', '2018-06-07 16:57:03'),
(3, 9, 'İş Adresi', 'Yakuplu Geçit Sok. Vera Plaza Kat:4 D:6', 'İstanbul', 'Beylikdüzü', '34520', '2018-08-27 12:52:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `popups`
--

CREATE TABLE `popups` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_turkish_ci,
  `page` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `popup_unique_id` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `rank` int(11) DEFAULT NULL,
  `finishedAt` datetime DEFAULT NULL,
  `client` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `place` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `portfolio_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `category_id` int(11) NOT NULL,
  `category_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `category_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dimensions` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `paper_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cut` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `color` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `application` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lac` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lamination` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `covering` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `metarial` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `thickness` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fabric` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `carrier_metarial` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `flag_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fixing_metarial` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `envelope_adhesive` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `envelope_window` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number_of_leaves` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `packing` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `vat_rate` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `production_time` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `product_keyw` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `product_desc` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `category_id`, `category_title`, `category_url`, `dimensions`, `paper_type`, `cut`, `color`, `application`, `lac`, `lamination`, `covering`, `metarial`, `thickness`, `fabric`, `carrier_metarial`, `flag_type`, `fixing_metarial`, `envelope_adhesive`, `envelope_window`, `number_of_leaves`, `packing`, `price`, `vat_rate`, `production_time`, `product_keyw`, `product_desc`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'seffaf-kartvizit', 'Şeffaf Kartvizit', '<p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;"><span style="font-size: 13.92px;">Tüm firma ve iletişim bilgilerinizi üzerinde barındıran&nbsp;</span><a href="https://www.bidolubaski.com/kartvizit" style="font-size: 13.92px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">kartvizitler</a><span style="font-size: 13.92px;">, kariyerinizin vazgeçilmez ihtiyaçlarının başında gelir. Müşteri ile göz göze gelerek ve iletişim kurarak paylaştığınız kartvizitinizi, şirketinizin karakteristik bir özeti düşünebilirsiniz. Kartvizitler, dijital ortamda paylaşılan bilgilerden çok daha gerçek ve somut oldukları için, akılda kalırlar. Bu nedenle müşterilerinizden geri dönüş alma ihtimaliniz de yükselir. Siz de avantajlı&nbsp;</span><span style="font-size: 13.92px; font-weight: 700;">kartvizit fiyatlarımızdan</span><span style="font-size: 13.92px;">&nbsp;yararlanarak, firmanıza ve karakterinize en uygun kartvizite sahip olabilirsiniz.</span><br></p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;"><a name="_GoBack" id="_GoBack" style="color: rgb(51, 51, 51);"></a>Firmanızın detaylara önem verdiğini kanıtlayan kartvizitiniz için fark yaratan bir tasarım ve dinamik bir logo tercihi yaparsanız, kartvizitinizin dikkat çekme ihtimali de yükselir. Organize matbaa kalitesiyle Bidolubaski.com, kartvizitinizle fark yaratmanız için harika tercihler sunuyor.&nbsp;<span style="font-weight: 700;">Şeffaf kartvizitler</span>&nbsp;de bu fark yaratan seçeneklerden biri. Şeffaf kartvizitler, tasarımları sayesinde firmanıza fark yaratan, dinamik ve yaratıcı imajını kazandırır.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">PVC malzemeleriyle yapılan ve dikkat çeken şeffaf kartvizitler, kalın plastiğe tek taraflı olarak basılır. PVC kartvizitler, aynı zamanda oldukça dayanıklıdır. Kırılma ve yırtılma gibi durumlarla karşılaşmanız söz konusu değildir.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">Bidolubaski.com üzerinden&nbsp;<span style="font-weight: 700;">online kartvizit</span>&nbsp;siparişi vermek istiyorsanız, yapmanız gerekenler çok basit. Baskıya hazır olan tasarımınızı, uygun formata getirdikten sonra Bidolubaski.com’a iletebilirsiniz.&nbsp;<span style="font-weight: 700;">Online matbaa</span>&nbsp;hizmeti sayesinde, şeffaf kartvizitiniz dilediğiniz şekilde adresinize ulaşacaktır. Profesyonel kadrosuyla her zaman yardımcı Bidolubaski.com ekibi, istek ve taleplerinize değer verir ve sonuçlardan memnun kalmanızı sağlar.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;"><span style="font-weight: 700;">Kartvizit Nasıl Seçilir?</span></p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">-Dijital çağda yaşadığımız için, kartvizitinizin dikkat çekici olması gerekir. Bu konuda çekingen davranmamalı, en dinamik ve en özel kartvizite sahip olmayı hedeflemelisiniz.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">-En çok tercih edilen, klasik kartvizit modellerinden uzak durmaya özen göstermelisiniz. Şeffaf kartvizitler gibi farklı tasarımlar akılda kalmanızı sağlar.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">-Kartınızı tamamen fark yaratan logo, yazı karakteri, renk değişimleri gibi seçeneklerle oluşturmak yerine, tüm bilgileri doğru bir tasarımla buluşturup, tek bir öğenin öne çıkmasını sağlayabilirsiniz.&nbsp;</p>', 1, 'Kartvizit', 'kartvizit', ' 8.5x5 cm', '500 Mikron Buzlu PVC', 'Oval', '4 Renk CMYK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '242,50', '18', '5 İş Günü', 'şeffaf kartvizit,i kartvizit', 'Tüm firma ve iletişim bilgilerinizi üzerinde barındıran kartvizitler', 0, 1, '2018-08-15 13:10:59'),
(2, 'tuale-fantazi-kartvizit', 'Tuale Fantazi Kartvizit', '<h2 style="text-align: justify; font-size: 1.5em; margin: 0.83em 0px; color: rgb(63, 63, 63); font-family: " open="" sans",="" arial,="" "helvetica="" neue",="" helvetica,="" sans-serif;"=""><br></h2><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;"><span style="font-weight: 700;">Tuale&nbsp;</span><span style="font-weight: 700;">f</span><span style="font-weight: 700;">antazi kartvizit</span>, 300 gr. Fantazi kağıdından basılarak üretilen, üzeri dokulu ya da tırtıklı bir görünüme sahip kartvizit modelidir.&nbsp;<span style="font-weight: 700;">Dokulu kartvizit</span>, tuale kartvizit ya da&nbsp;<span style="font-weight: 700;">fantazi kartvizit</span>&nbsp;olarak isimlendirilmektedir. Genellikle tuale fantazi kartvizit baskılarda beyaz renk kullanılan sade tasarımlar tercih edilir.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">Bidolubaskı\'da&nbsp;<span style="font-weight: 700;">tuale fantezi kartvizit fiyatları</span>&nbsp;ürün adedine göre değişkenlik göstermektedir. Minimum 500 adet sipariş verebilir ve ihtiyaca göre fazla adetlerde baskıda talep edebilirsiniz.&nbsp;<span style="font-weight: 700;">Online sipariş</span>&nbsp;kolaylığı sunan Bidolubaskı\'dan sipariş verebilmek için tek yapmanız gereken fantazi kartvizit tasarımını siteye yüklemek ve ürününüzün size ulaşmasını beklemektir. Ürünleriniz baskı onayından sonra belirtilen üretim süreleri sonunda ücretsiz olarak kargoya verilmektedir.</p><h2 style="text-align: justify; font-size: 1.5em; margin: 0.83em 0px; color: rgb(63, 63, 63); font-family: " open="" sans",="" arial,="" "helvetica="" neue",="" helvetica,="" sans-serif;"=""><span style="font-weight: 700;">Tuale Fantazi Kartvizit Tasarımı Yaparken Dikkat Edilmesi Gerekenler</span></h2><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">- Sipariş vermeden önce kartvizit tasarım ebatının ürün ebatıyla aynı olmasına dikkat ediniz.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">- Ürün tek yön baskılı olduğundan dolayı bilgilerinizin eksiksiz olduğundan emin olun.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">- Tasarım dosyanızın çözünürlüğünün yüksek olması baskının daha kaliteli çıkmasında büyük önem taşımaktadır.</p>', 1, 'Kartvizit', 'kartvizit', '8.4 x 5.2 cm', ' 315 gr. Fantazi Dokulu', ' Düz Kesim', '4 Renk CMYK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37,38', '18', '3 İş Günü', 'tuale fantazi kartvizit, kartvizit', 'Tuale fantazi kartvizit, 300 gr. Fantazi kağıdından basılarak üretilen, üzeri dokulu ya da tırtıklı bir görünüme sahip kartvizit modelidir.', 0, 1, '2018-08-15 13:13:02'),
(3, 'kapi-askisi-el-ilani', 'Kapı Askısı El İlanı', '<h3 style="text-align: justify; font-size: 1.17em; margin: 1em 0px; color: rgb(63, 63, 63); font-family: " open="" sans",="" arial,="" "helvetica="" neue",="" helvetica,="" sans-serif;"=""><br></h3><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">El ilanları tanıtım faaliyetleriniz için geleneksel ve vazgeçilmez yolların başında geliyor. Fakat biraz daha fark yaratmak ve akılda kalıcı etkiler bırakmak için ilanınızı,&nbsp;<span style="font-weight: 700;">kapı askısı el ilanı</span>olarak bastırabilirsiniz. Belirtmek istediğiniz mesajı, el ilanını düşünerek ortaya çıkardıktan sonra kapı askısı el ilanı bastırmanız çok kolay. Fazla yer tutmayan kapı askısı el ilanlarının üzerindeki bilgilerin akılda kalıcı ve hızlı tüketilir bilgiler olmasına da dikkat etmenizde fayda var. Bidolubaski.com üzerinden, &nbsp;kapı askısı el ilanlarını<span style="font-weight: 700;">&nbsp;</span>seçip,&nbsp;<span style="font-weight: 700;">online matbaa siparişi</span>verebilirsiniz.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;">“Yeni nesil matbaacılık” sloganı ile fark yaratan Bidolubaski.com, geleneksel baskı yöntemlerini, yepyeni teknolojilerle buluşturuyor.&nbsp;<a href="https://www.bidolubaski.com/" style="color: rgb(51, 51, 51);"><span style="font-weight: 700;">Organize matbaa</span></a>&nbsp;farkıyla bastırabileceğiniz ilanlarınız, en az 5 iş günü içinde adresinize teslim ediliyor. Tek yapmanız gereken, kapı askısı el ilanı üzerinde yazmasını istediğiniz bilgileri ve diğer tasarımları, Bidolubaski.com’a yüklemek. Ondan sonrasını profesyonel Bidolubaski.com ekibi devralacak ve belirttiğiniz tüm detaylara uygun bir ilana sahip olacaksınız.</p><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px; font-family: Arial, sans-serif;"><span style="font-weight: 700;">Kapı Askısı El İlanı Bastırırken Dikkat Etmeniz Gerekenler:</span></p><ul style="margin-top: 1em; margin-bottom: 1em; font-family: " open="" sans",="" arial,="" "helvetica="" neue",="" helvetica,="" sans-serif;="" font-size:="" 12px;"=""><li style="list-style: none; background: url(" sites="" all="" themes="" bdbtheme="" css="" images="" list-icon-arrow.png")="" left="" 1px="" no-repeat="" transparent;="" padding-left:="" 22px;="" margin-bottom:="" 10px;="" color:="" rgb(98,="" 98,="" 98);="" font-size:="" 13.92px;="" line-height:="" font-family:="" arial,="" sans-serif;"=""><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px;">Fazla yer tutmayan ve elden ele dolaşabilecek kapı askısı el ilanlarını bastırırken, üzerinde kullanacağınız dilin dikkat çekici ve net olmasına özen göstermelisiniz.</p></li><li style="list-style: none; background: url(" sites="" all="" themes="" bdbtheme="" css="" images="" list-icon-arrow.png")="" left="" 1px="" no-repeat="" transparent;="" padding-left:="" 22px;="" margin-bottom:="" 10px;="" color:="" rgb(98,="" 98,="" 98);="" font-size:="" 13.92px;="" line-height:="" font-family:="" arial,="" sans-serif;"=""><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px;">Online el ilanı siparişi verirken, ilanda firmanızın iletişim bilgilerinin yer almasını sağlayın.</p></li><li style="list-style: none; background: url(" sites="" all="" themes="" bdbtheme="" css="" images="" list-icon-arrow.png")="" left="" 1px="" no-repeat="" transparent;="" padding-left:="" 22px;="" margin-bottom:="" 10px;="" color:="" rgb(98,="" 98,="" 98);="" font-size:="" 13.92px;="" line-height:="" font-family:="" arial,="" sans-serif;"=""><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px;">Tanıtım faaliyetinde neleri amaçladığınızı, okuyanlara nasıl bir değer vadettiğinizi açık ve net bir şekilde ifade etmelisiniz. Böylece akılda kalıcı olmayı sağlarsınız.</p></li><li style="list-style: none; background: url(" sites="" all="" themes="" bdbtheme="" css="" images="" list-icon-arrow.png")="" left="" 1px="" no-repeat="" transparent;="" padding-left:="" 22px;="" margin-bottom:="" 10px;="" color:="" rgb(98,="" 98,="" 98);="" font-size:="" 13.92px;="" line-height:="" font-family:="" arial,="" sans-serif;"=""><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px;">Örnek tasarımları inceleyerek fikir sahibi olabilirsiniz.</p></li><li style="list-style: none; background: url(" sites="" all="" themes="" bdbtheme="" css="" images="" list-icon-arrow.png")="" left="" 1px="" no-repeat="" transparent;="" padding-left:="" 22px;="" margin-bottom:="" 10px;="" color:="" rgb(98,="" 98,="" 98);="" font-size:="" 13.92px;="" line-height:="" font-family:="" arial,="" sans-serif;"=""><p style="text-align: justify; margin-bottom: 1.5em; color: rgb(98, 98, 98); font-size: 13.92px; line-height: 25px;">Son cümleler en çok okunan ve en fazla akılda kalan kısımlardır. İletmek istediğiniz mesajınızı, vurucu bir cümleyle bitirmeye özen gösterin.&nbsp;</p></li></ul>', 2, 'El İlanları', 'el-ilanlari', '10.9x23.6 cm', '200 gr. Mat Kuşe', '', 'Baskılı 4 Renk CMYK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '280', '18', '4 İş Günü', 'kapı askısı el ilanı, el ilanı', 'El ilanları tanıtım faaliyetleriniz için geleneksel ve vazgeçilmez yolların başında geliyor', 0, 1, '2018-08-15 13:16:55'),
(4, 'ghdfg', 'ghdfg', '<p>fghdj</p>', 10, 'Rulo', 'rulo', ' 8.5x5 cm', '500 Mikron Buzlu PVC', ' Düz Kesim', '4 Renk CMYK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '242,50', '18', '5 İş Günü', 'zdhgfdf', 'fghedfg', 0, 1, '2018-08-17 19:19:00'),
(5, 'bos-deneme-urun', 'boş deneme ürün', '<p>boş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürün</p><p><br></p><p>boş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürün</p><p><br></p><p>boş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürünboş deneme ürün</p>', 2, 'El İlanları', 'el-ilanlari', '10.9x23.6 cm', '200 gr. Mat Kuşe', 'Oval', '4 Renk CMYK', 'Salefonlu', 'Tek Yön Lak', 'Mat Salefon', 'PVC Kaplama', ' Blueback Su Bazlı Solvent', '1.7 mm', ' Alpaka Kumaş', 'Alüminyum', 'Sopalı Bayrak (Özel Tasarım)', '20 Litre Plastik Bidon', 'Silikonlu', 'Penceresiz', '12', ' 110 gr. Polyester/ Alüminyum', '37,38', '18', '3 İş Günü', 'rfdsfdth', 'zdarfghstgfd', 0, 1, '2018-08-20 10:05:27'),
(6, 'ersaytsrt', 'ersaytsrt', '<p>hdrfthty</p>', 1, 'Kartvizit', 'kartvizit', 'r ', 'eredg', 'darfg', 'dsfgh', '', '', '', '', 'rtgh', '', '', '', '', '', '', '', '', '', '242,50', '18', 'srag', 'tgh', 'stgh', 0, 1, '2018-08-20 11:24:27'),
(7, 'strhetr', 'strhetr', '<p>jdtyj</p>', 1, 'Kartvizit', 'kartvizit', ' 8.5x5 cm', 'srfth', 'treh', '', 'Salefonlu', '', '', '', '', '', '', '', '', '', '', '', '', ' 110 gr. Polyester/ Alüminyum', '242,50', '18', '', '', '', 0, 1, '2018-08-20 11:32:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `rank` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `url`, `isActive`, `rank`, `createdAt`) VALUES
(1, 'Kartvizit', 'kartvizit', 1, 0, '2018-08-15 13:01:18'),
(2, 'El İlanları', 'el-ilanlari', 1, 1, '2018-08-15 13:01:24'),
(3, 'Broşürler', 'brosurler', 1, 2, '2018-08-15 13:01:30'),
(4, 'Reklam Ürünleri', 'reklam-urunleri', 1, 3, '2018-08-15 13:01:35'),
(5, 'Kurumsal Ürünler', 'kurumsal-urunler', 1, 4, '2018-08-15 13:01:42'),
(6, 'İç - Dış Mekan Reklam', 'ic---dis-mekan-reklam', 1, 5, '2018-08-15 13:01:50'),
(7, 'Promosyon Ürünleri', 'promosyon-urunleri', 1, 6, '2018-08-15 13:02:01'),
(8, 'Restoran/Cafe Ürünleri', 'restoran-cafe-urunleri', 1, 7, '2018-08-15 13:02:07'),
(9, 'Makbuz & Form', 'makbuz---form', 1, 8, '2018-08-15 13:02:13'),
(10, 'Rulo', 'rulo', 1, 9, '2018-08-15 13:02:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_file`
--

CREATE TABLE `product_file` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product_file`
--

INSERT INTO `product_file` (`id`, `product_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 1, 'sql.txt', 0, 1, '2018-08-16 13:12:47'),
(2, 1, '3bolum.pdf', 0, 1, '2018-08-16 13:17:36'),
(3, 1, 'cv-enes-erol-115047471.pdf', 0, 1, '2018-08-16 13:21:53'),
(4, 2, 'cv-enes-erol-1150474711.pdf', 0, 1, '2018-08-16 13:23:47'),
(5, 2, '3bolum1.pdf', 0, 1, '2018-08-16 13:23:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(4, 1, 'seffaf-kartvizit.jpg', 0, 1, 1, '2018-08-15 13:30:26'),
(5, 2, 'tuale-fantazi-kartvizit.jpg', 0, 1, 1, '2018-08-15 13:31:06'),
(6, 3, 'kapi-askisi-el-ilani-mockup.jpg', 0, 1, 1, '2018-08-15 13:31:14'),
(7, 5, 'menu-icon-5060.jpg', 0, 1, 0, '2018-08-20 10:05:45'),
(8, 5, 'masaustu-pleksi.jpg', 0, 1, 1, '2018-08-20 10:05:45'),
(9, 6, 'bizimle-calismak-ister-misiniz-banner.jpeg', 0, 1, 1, '2018-08-20 11:24:37'),
(10, 7, 'bidolu-fuar-urunleri-1180x400-sayfa-banner.jpg', 0, 1, 1, '2018-08-20 11:33:06'),
(11, 4, 'cafe-restoran-matbaa-urunleri-bidolu.jpg', 0, 1, 1, '2018-08-20 11:34:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `price_title`, `price`, `rank`, `isActive`) VALUES
(15, 1, 'deneme2', '37,38', 0, 1),
(14, 1, 'weqqwqewq', '242,50', 2, 1),
(16, 2, 'aaa', '553', 0, 1),
(17, 2, 'xfg', '242,50', 0, 1),
(18, 1, '100 adet', '55', 1, 1),
(19, 3, 'aaa', '242,50', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `language` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`id`, `title`, `description`, `isActive`, `language`) VALUES
(1, 'Hangi baskı tekniğini kullanıyorsunuz?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Bidolu, matbaa işinizin en kaliteli, istenilen sürede ve uygun fiyata üretilmesi için, ofset baskı, dijital baskı ve organize matbaacılık tekniklerinin hepsini kullanmaktadır.</span><br></p>', 1, NULL),
(2, 'Ürünlerin kalitesinden nasıl emin olacağım?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Bidolu, Türkiye\'de 81 ile binlerce gönderi yapmıştır. Satın almadan önce baskı kalitemizi görmeniz için ücretsiz olarak numune talep edebilmenizi sağladık. Bu formu doldurarak Numune Kutusunu ücretsiz talep edebilirsiniz.</span><br></p>', 1, NULL),
(3, 'Tasarım hizmeti veriyor musunuz?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Bidolu tasarım hizmeti vermemektedir. Hazır tasarımlarınızı kaliteli ve uygun fiyatlarla matbaa baskı ürünlerine çevirir.</span><br></p>', 1, NULL),
(4, 'Baskı öncesi herhangi bir kontrol yapıyor musunuz?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Gönderdiğiniz tasarımlar grafikerlerimiz tarafından çözünürlük, yerleşim, kesim payı gibi konularda baskıya uygunluğu açısından kontrol edilir ve gerekli ise düzeltmeler yapılır. Bu işlem sonrasında son bir defa daha kontrol etmeniz için baskı onayı e-postası gönderilir. Siz onay verdikten sonra üretime alınır.</span><br></p>', 1, NULL),
(5, 'Siparişim ne zaman elime ulaşır?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Üretim süreleri ürünlere göre değişmektedir. Her bir ürünün üretim süresi bilgisini ürünün kendi sayfasında görebilirsiniz. Baskı onayınız ardından ürünler üretime alınmakta ve belirtilen üretim süreleri sonunda kargoya verilmektedir.</span><br></p>', 1, NULL),
(6, 'Siparişimi Bidolu merkezinden alabilir miyim?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Hayır, bütün siparişler kargo ile teslim edilmektedir.</span><br></p>', 1, NULL),
(7, 'Siparişler Bidolu faturası üzerinde olmadan istediğim adrese teslim edilebilir mi?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Evet. Temsilcimize isteğinizi ilettiğiniz taktirde, siparişiniz istediğiniz adrese, Bidolu ibaresi olmadan teslim edilebilir.</span><br></p>', 1, NULL),
(8, 'Baskıda herhangi bir sorun olursa iade yapılabiliyor mu?', '<p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify;">Bidolu oluşabilecek renk farklılığı, kayma gibi baskı sürecinde oluşabilecek her türlü hatada ürün iadesi kabul eder, ürünü yeniden üretir veya sipariş tutarını geri öder. Tasarım hataları ve metinlerde oluşabilecek eksiklikler ve hatalardan sorumlu değildir.</span><br></p>', 1, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

CREATE TABLE `references` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sample_box`
--

CREATE TABLE `sample_box` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `cargo_address` text NOT NULL,
  `tax_number` varchar(25) NOT NULL,
  `purpose_of_request` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sample_box`
--

INSERT INTO `sample_box` (`id`, `name`, `email`, `phone`, `city`, `state`, `cargo_address`, `tax_number`, `purpose_of_request`) VALUES
(1, 'Enes Erol', 'enesserol7@gmail.com', '5303718083', 'İstanbul', 'Beylikdüzü', 'Beylikdüzü / İstanbul', '2356419064', 'Kalitenizi Görmek İstiyorum');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `rank` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sector`
--

INSERT INTO `sector` (`id`, `title`, `url`, `isActive`, `rank`, `createdAt`) VALUES
(1, 'Bilgisayar/Bilişim/İnternet', 'bilgisayar-bilisim-internet', 1, 0, '2018-08-26 15:42:16'),
(2, 'Copy Center', 'copy-center', 1, 1, '2018-08-26 15:42:31'),
(3, 'Diğer', 'diger', 1, 13, '2018-08-26 15:42:37'),
(4, 'Eğitim', 'egitim', 1, 2, '2018-08-26 15:42:44'),
(5, 'Fotoğrafçı', 'fotografci', 1, 3, '2018-08-26 15:42:55'),
(6, 'Gayrimenkul', 'gayrimenkul', 1, 4, '2018-08-26 15:43:05'),
(7, 'Grafik Tasarımcı', 'grafik-tasarimci', 1, 5, '2018-08-26 15:43:18'),
(8, 'Kırtasiye', 'kirtasiye', 1, 6, '2018-08-26 15:43:27'),
(9, 'Matbaa', 'matbaa', 1, 7, '2018-08-26 15:43:35'),
(10, 'Parakende', 'parakende', 1, 8, '2018-08-26 15:43:41'),
(11, 'Reklam Ajansı', 'reklam-ajansi', 1, 9, '2018-08-26 15:43:52'),
(12, 'Restoran/Cafe', 'restoran-cafe', 1, 10, '2018-08-26 15:44:11'),
(13, 'Sağlık', 'saglik', 1, 11, '2018-08-26 15:44:19'),
(14, 'Turizm', 'turizm', 1, 12, '2018-08-26 15:44:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `icon_code` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci,
  `about_us` longtext COLLATE utf8_turkish_ci,
  `mission` longtext COLLATE utf8_turkish_ci,
  `vision` longtext COLLATE utf8_turkish_ci,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mobile_logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lat` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `long` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `homepage_references_description` text COLLATE utf8_turkish_ci,
  `meta_keywords` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `analytics` text COLLATE utf8_turkish_ci,
  `metrica` text COLLATE utf8_turkish_ci,
  `live_support` text COLLATE utf8_turkish_ci,
  `iban` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `mission`, `vision`, `logo`, `mobile_logo`, `favicon`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `lat`, `long`, `createdAt`, `updatedAt`, `homepage_references_description`, `meta_keywords`, `meta_description`, `analytics`, `metrica`, `live_support`, `iban`) VALUES
(1, 'Bidolu', 'Doğru Adrestesiniz', '																																																<p><i class="fa fa-compass"></i><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;">Yakuplu Mahallesi, Geçit Sokak&nbsp;</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;">Vera Plaza Kat:4 D:6,&nbsp;</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;">34520 Beylikdüzü/İstanbul</span></p>', '																																																<h3 style="margin-top: 50px; margin-bottom: 30px; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; font-weight: 700; line-height: 1.2; color: rgb(33, 37, 41); font-size: 23px;">HAKKIMIZDA</h3><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Türkiye’nin en büyük online matbaası bidolu.com ile tüm baskı ihtiyaçlarınız ücretsiz kargo ile kapında!</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">bidolu.com ile kartvizitten el ilanına, afişten antetli kağıda, Amerikan servisten bayrak çeşitlerine kadar ihtiyaç duyduğunuz tüm baskı ürünlerini bulabilirsiniz. Geniş ürün yelpazesi ve gün geçtikçe artmaya devam eden ürün sayısı ile bidolu.com yıllardır baskı dendiğinde akla gelen ilk adres.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Kolaylık prensibi üzerine kurulan altyapısıyla ‘hızlı’ ve ‘kaliteli’ hizmet alabileceğiniz bidolu.com ile geleneksel matbaa süreçlerinin sebep olduğu zaman ve para kaybını ortadan kaldırıyoruz. bidolu.com üzerinden verdiğiniz siparişleri son teknolojiye sahip makinelerle üretip Türkiye’nin neresinde olursanız olun ‘tam zamanında’ size teslim ediyoruz.</p><h4 style="margin-top: 50px; margin-bottom: 30px; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; font-weight: 700; line-height: 1.2; color: rgb(33, 37, 41); font-size: 17px;">AVANTAJLARIMIZ</h4><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Tüm baskı ihtiyaçlarınızı internet sitemiz üzerinden kolayca alıyor, ürünlerinizi adresinize kadar ücretsiz kargo ile gönderiyoruz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Hangi sektörde ve hangi boyutta olursa olsun firmanızın tüm matbaa ve baskı ihtiyaçlarını tek bir noktadan karşılama imkanı sunuyoruz. Bu sayede geleneksel matbaa süreçlerinin getirdiği iş yükünden kurtuluyorsunuz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Türkiye’nin neresinde olursanız olun, kaliteli ve hızlı hizmet alabilme imkanını size sunuyoruz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Kullanıcı dostu tasarımımız ve altyapımız ile aradığınız her bilgiye veya ürüne kolayca ulaşabilir, kafanıza takılan sorular için ‘Bize Sorun’ bölümünü kullanarak bizlerle mesajlaşabilirsiniz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Uzayıp giden yüz yüze görüşmelerle vakit kaybetmezsiniz ama yardıma ihtiyaç duyduğunuz her an bir telefon ya da mesaj ile bize ulaşabilirsiniz.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">• Termin ve sevkiyat süreçlerinde sorun yaşamazsınız, ürünleriniz kargo aracılığıyla belirtilen sürede adresinize teslim edilir.</p><p style="margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";">Hadi siz de zaman kaybetmeden online matbaa dünyasının ayrıcalıklarından faydalanmaya başlayın!</p>																																				', '																																																<h3 class="about-style-h" style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" line-height:="" 1.2;="" color:="" rgb(33,="" 37,="" 41);="" font-size:="" 19px;="" text-align:="" justify;"="">Bidolu - Türkiye\'nin En Büyük Online Matbaası</h3><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">"<span style="font-weight: bolder;">Yeni Nesil Matbaa</span>" anlayışıyla kurulduğumuz ilk günden beri Bidolu olarak, matbaacılık sektöründe yenilikçi bir anlayış ile hizmet veriyoruz. Matbaa sektöründe alışılagelmiş düzenleri tamamen değiştiriyor ve müşteri memnuniyetini her şeyin önünde tutuyoruz. İnternet ve teknolojinin hayatımıza her gün daha fazla dahil olduğu şu dönemde, <span style="font-weight: bolder;">online matbaa</span> kavramının hayatımıza dahil olması da kaçınılmazdı.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Bidolu tüm baskı ihtiyaçlarınızı tek bir platformdan ve uygun fiyatlarla bastırabileceğiniz bir online matbaadır. Firma olarak amacımız, müşterilerimizin baskı ihtiyaçları için uygun fiyat ve kaliteli baskıyı en iyi hizmet kalitesi ile almalarını sağlamaktır. <span style="font-weight: bolder;">Kartvizit</span>, el ilanı, broşür, davetiye, rulo, etiket, magnet, roll-up, afiş, takvim, amerikan servis ve 100\'ün üzerinde ürün çeşidini bir arada ve uygun fiyatlı olarak bulabileceğiniz online matbaa Bidolubaskı, size bunların yanında birçok da avantaj sunar. Peki, nedir bu avantajlar?</p><h3 class="about-style-h" style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" line-height:="" 1.2;="" color:="" rgb(33,="" 37,="" 41);="" font-size:="" 19px;="" text-align:="" justify;"="">Bidolu Online Matbaa Hizmetinin Avantajları</h3><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Yıllardan beridir kullanılan geleneksel matbaa süreçleri oldukça yavaş ve zahmetlidir. Geleneksel matbaalarda sipariş verme, baskı ve teslimat süreçleri, baskı kalitesi, değişken baskı fiyatları gibi pek çok konu yıllardır firmaları yıllardır bezdirmiş durumda. <span style="font-weight: bolder;">Online matbaa</span> ile beraber artık tüm baskı ihtiyaçlarınızı müşteri memnuniyeti garantisi ve uygun fiyatlarla çözebilirsiniz.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Bidolu ile reklam ajansları, grafikerler, KOBİ ve çok şubeli firmalar baskı siparişlerini özel fırsatlar ile internet üzerinden kolayca verirler. Biz de her firmanın ihtiyacına en uygun şartları tümüyle organize bir şekilde sağlamak için elimizden geleni yaparız. Firma olarak en büyük önceliğimiz, müşterilerimize en iyi hizmeti vererek, her süreçte onların yanında olmak. Örneğin, diğer firmaların aksine Bidolu\'da sipariş sonrasında da her kanaldan destek almaya devam edebilirsiniz. Kısaca biz; arı gibi çalışan, karınca gibi organize olan, tazı gibi hızlı, kuşlar kadar özgür bir firmayız.</p>																																				', '																																																<h3 class="about-style-h" style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" line-height:="" 1.2;="" color:="" rgb(33,="" 37,="" 41);="" font-size:="" 19px;="" text-align:="" justify;"="">Müşterilerimiz Neden Bizi Seçiyorlar?</h3><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Bidolu olarak müşterilerimize sipariş öncesi ve sonrası gereken ilgiyi göstererek doğabilecek olan olası memnuniyetsizlikleri gidermek için elimizden geleni yapıyoruz. <span style="font-weight: bolder;">Matbaa</span> sektöründe müşteri odaklı çalışan bir marka olmak bizi birçok geleneksel matbaa mağduru için çölde bir vaha haline getiriyor. Biz de tüm süreçlerimizde geleneksel matbaadan çok çekmiş müşterilerimize iyi bir deneyim yaşatmak için var gücümüzle çalışıyoruz. İşin özünde Bidolubaskı olarak, en kaliteli baskı ürünlerini, en uygun fiyatlarla ve en iyi müşteri deneyimi ile sizlerle buluşturuyoruz.</p><h3 class="about-style-h" style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" line-height:="" 1.2;="" color:="" rgb(33,="" 37,="" 41);="" font-size:="" 19px;="" text-align:="" justify;"="">Türlü Türlü Baskı Ürünlerimiz Var</h3><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Reklam firmaların başarısında rol oynayan en önemli parçalardan biridir. <span style="font-weight: bolder;">Matbaa baskı</span>ürünleri ise reklam, promosyon ve marka imajı gibi pek çok farklı noktadan bu ana parçayı destekler. Bu nedenle her firma hangi sektörde olursa olsun baskı ürünlerine ihtiyaç duyar. Biz de Bidolu olarak firmaların bu ihtiyaçlarına en kolay, en kaliteli ve en uygun fiyatlarla ulaşması için matbaacılık alanında faaliyet gösteriyoruz.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"="">Bidolu baskı adına aklınıza gelebilecek olan her ürünü temin edebileceğin Türkiye\'nin en büyük online matbaasıdır. Kartvizit, el ilanı, broşür, afiş, davetiye, roll-up gibi herkes tarafından kullanılan matbaa ürünlerinden, dergi, katalog, magnet, billboard gibi sadece bazı sektörlerde yoğunlukla kullanılan ürünlere kadar tüm ürünleri sitemizde bulabilirsiniz. Madem öyle, Bidolubaskı baskı ürünlerimiz neler, onlardan bahsedelim:</p><ol style="margin-bottom: 1rem; list-style-position: initial; list-style-image: initial; font-size: 13px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, " segoe="" ui",="" roboto,="" "helvetica="" neue",="" arial,="" sans-serif,="" "apple="" color="" emoji",="" "segoe="" ui="" symbol",="" "noto="" emoji";="" text-align:="" justify;"=""><li style="">Kimin ne olduğunu ve nerede bulunduğunu gösteren <span style="font-weight: bolder;">kartvizitler</span>,</li><li style="">El ele, göz göze iletişimi en direkt yoldan sağlayan <span style="font-weight: bolder;">el ilanları</span>,</li><li style="">Dünyanın en olmazsa olmaz reklam ürünü olan <span style="font-weight: bolder;">broşürler</span>,</li><li style="">Sesinizi büyük kitlelere duyurmanızı sağlayan <span style="font-weight: bolder;">afişler</span> ve <span style="font-weight: bolder;">posterler</span>,</li><li style="">Kurumsal kimlik nadideleri <span style="font-weight: bolder;">antetli kâğıtlar</span>, <span style="font-weight: bolder;">zarflar</span>, <span style="font-weight: bolder;">cepli dosyalar</span>,</li><li style="">Ofislere şenlik <span style="font-weight: bolder;">küp bloknotlar</span>, <span style="font-weight: bolder;">yapışkanlı kâğıtlar</span>, <span style="font-weight: bolder;">takvimler</span>, <span style="font-weight: bolder;">kitap ayraçları</span>,</li><li style="">Hayat kurtaran ıslak ve <span style="font-weight: bolder;">kolonyalı mendiller</span>,</li><li style="">“Havalı” <span style="font-weight: bolder;">billboard baskı</span>, <span style="font-weight: bolder;">roll up banner baskı</span>, <span style="font-weight: bolder;">raket-reklam pano baskılar</span>,</li><li style="">Hesap kitap işleri için <span style="font-weight: bolder;">makbuz</span> ve form <span style="font-weight: bolder;">baskı ürünleri</span>,</li><li style="">POS cihazlarından yazar kasalara, yuvarlanıp giden <span style="font-weight: bolder;">rulo ürünler</span>,</li><li style="">Ve <a href="http://localhost:9090/bidolu/index.html#" style="color: rgb(0, 123, 255);">daha fazlası...</a></li></ol>																																				', 'bidolu.png', 'bidolu.png', 'bidolu.png', '555 555 5555', '555 555 5555', '', '', 'info@bidolu.com', 'bidolu', 'bidolu', 'bidolu', 'bidolu', 'bidolu', '41.0038145', '28.6663802', '2018-08-15 10:01:58', '2018-08-17 21:16:49', NULL, '<p>bidolu, matbaa, kartvizit</p>', '<p>bidolu, matbaa, kartvizit<br></p>', '', '', '', 'TR00 0000 0000 0000 0000 0000 00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides`
--

CREATE TABLE `slides` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `allowButton` tinyint(4) DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `button_caption` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_time` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `button_caption`, `animation_type`, `animation_time`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'deneme', '<p>zdfghsrfth</p>', 'videosinif-proje.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-08-16 08:58:07'),
(2, 'zfgsfdx', '<p>dzfghxdgfh</p>', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2018-08-17 20:15:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '-99',
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(1, 'enesserol7', 'Enes Erol', 'enesserol7@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 1, '2018-06-07 16:57:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videos`
--

CREATE TABLE `videos` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Tablo için indeksler `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `card_information`
--
ALTER TABLE `card_information`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_payments`
--
ALTER TABLE `failed_payments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `information_pages`
--
ALTER TABLE `information_pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `job_advertisements`
--
ALTER TABLE `job_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `offer_requests`
--
ALTER TABLE `offer_requests`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `other_addresses`
--
ALTER TABLE `other_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_file`
--
ALTER TABLE `product_file`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sample_box`
--
ALTER TABLE `sample_box`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `card_information`
--
ALTER TABLE `card_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `failed_payments`
--
ALTER TABLE `failed_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `information_pages`
--
ALTER TABLE `information_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `job_advertisements`
--
ALTER TABLE `job_advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `job_application`
--
ALTER TABLE `job_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `offer_requests`
--
ALTER TABLE `offer_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `other_addresses`
--
ALTER TABLE `other_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `product_file`
--
ALTER TABLE `product_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Tablo için AUTO_INCREMENT değeri `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `references`
--
ALTER TABLE `references`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `sample_box`
--
ALTER TABLE `sample_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
