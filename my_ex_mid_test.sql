-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               8.1.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for my_mid_test
CREATE DATABASE IF NOT EXISTS `my_mid_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_mid_test`;

-- Dumping structure for table my_mid_test.score
CREATE TABLE IF NOT EXISTS `score` (
  `SBD` varchar(50) NOT NULL,
  `math` float NOT NULL,
  `Văn` float NOT NULL,
  `Anh` float NOT NULL,
  KEY `FK_score_table_list` (`SBD`),
  CONSTRAINT `FK_score_table_list` FOREIGN KEY (`SBD`) REFERENCES `table_list` (`SBD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table my_mid_test.score: ~6 rows (approximately)
REPLACE INTO `score` (`SBD`, `math`, `Văn`, `Anh`) VALUES
	('1001', 7.5, 8, 9.5),
	('1002', 5.5, 9, 7.5),
	('1003', 6.5, 6.5, 6),
	('1004', 7.5, 8, 8),
	('1005', 4.5, 8, 9.5),
	('1006', 6, 8, 8.5);

-- Dumping structure for table my_mid_test.table_list
CREATE TABLE IF NOT EXISTS `table_list` (
  `STT` int NOT NULL,
  `SBD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Họ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tên` varchar(50) NOT NULL,
  `lớp` varchar(50) NOT NULL DEFAULT '',
  `giới_tính` varchar(50) NOT NULL DEFAULT '',
  `TBM` float NOT NULL,
  `Học_lực` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`SBD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table my_mid_test.table_list: ~6 rows (approximately)
REPLACE INTO `table_list` (`STT`, `SBD`, `Họ`, `Tên`, `lớp`, `giới_tính`, `TBM`, `Học_lực`) VALUES
	(1, '1001', 'Nguyễn Văn', 'Anh', '12A1', 'Nam', 8, 'Giỏi'),
	(2, '1002', 'Huỳnh Thái', 'Bình', '12A2', 'Nữ', 7.5, 'Khá'),
	(3, '1003', 'Nguyễn Văn', 'Minh', '12A2', 'Nam', 5.5, 'TB'),
	(4, '1004', 'Trần Đại ', 'Nghĩa', '12A7', 'Nam', 6.4, 'TB'),
	(5, '1005', 'Nguyễn Thị', 'Oanh', '12A1', 'Nữ', 9, 'Giỏi'),
	(6, '1006', 'Nguyễn Thị', 'Tâm', '12A10', 'Nữ', 7.5, 'Khá');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
