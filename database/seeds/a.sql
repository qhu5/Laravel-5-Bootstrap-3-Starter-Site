-- --------------------------------------------------------
-- Host:                         192.168.0.57
-- Server version:               5.6.30 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Dumping data for table laravel5_starter.photos: ~0 rows (approximately)
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` (`id`, `language_id`, `position`, `slider`, `filename`, `name`, `description`, `photo_album_id`, `album_cover`, `user_id`, `user_id_edited`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, NULL, 0, '3794d256a6aef07c0bf51dd21872907dc195c51f.jpg', 'test_photo1', '', 1, 1, 1, 1, '2016-07-21 06:58:27', '2016-07-21 07:00:32', NULL),
	(2, 1, NULL, 0, 'fad99c1abe85e10490f7c085777fb45d02cb71dc.png', 'test_photo2', '', 1, 1, 1, NULL, '2016-07-21 08:41:20', '2016-07-21 08:41:20', NULL),
	(3, 1, NULL, 0, '629fbec859a3b0c93279ff414963ba881072bc88.png', 'test_photo3', '', 1, 0, 1, NULL, '2016-07-21 08:42:07', '2016-07-21 08:42:07', NULL),
	(4, 1, NULL, 0, 'aa4462fb37fab442f2264f306a6a2542b57aa346.png', 'test_photo4', '', 1, 1, 1, NULL, '2016-07-21 08:42:24', '2016-07-21 08:42:24', NULL),
	(5, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', '', 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL),
	(6, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', NULL, 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL),
	(7, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', NULL, 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL),
	(8, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', NULL, 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL),
	(9, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', NULL, 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL),
	(10, 1, NULL, 0, '0159feb768ade0b0aad579059e6b4b2f92bfaede.png', 'test_photo5', NULL, 1, 1, 1, NULL, '2016-07-21 08:42:40', '2016-07-21 08:42:40', NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
