-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.6.21-enterprise-commercial-advanced-log - MySQL Enterprise Server - Advanced Edition (Commercial)
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- barcode 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `barcode` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `barcode`;

-- 테이블 barcode.placenearnew 구조 내보내기
CREATE TABLE IF NOT EXISTS `placenearnew` (
  `idx` int(11) DEFAULT NULL,
  `sliderimg` char(50) DEFAULT NULL,
  `lname` char(50) DEFAULT NULL,
  `sname` char(50) DEFAULT NULL,
  `writer` char(50) DEFAULT NULL,
  `content` char(50) DEFAULT NULL,
  `regdate` char(50) DEFAULT NULL,
  `blogname` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 barcode.placenearnew:~5 rows (대략적) 내보내기
DELETE FROM `placenearnew`;
/*!40000 ALTER TABLE `placenearnew` DISABLE KEYS */;
INSERT INTO `placenearnew` (`idx`, `sliderimg`, `lname`, `sname`, `writer`, `content`, `regdate`, `blogname`) VALUES
	(1, './place_home_files/mobile_161931588324c.jpg', '산책하기 좋은 인천아시아드주경기장', '인천,경기 등 여행', '공항철도', '쌀쌀하다.', '2017. 12. 6. 15:31', '공항철도'),
	(2, './place_home_files/mobile_161940605560c.jpg', '이제는 츄러스가 대세! 송도 스트릿 츄러스!', 'IFEZ 맛집', '인경이', '매년 이맘때가 되면 곳곳에 붕어빵,', '2017. 12. 8. 12:04', 'IFEZ 관광먹거리 블로그'),
	(3, './place_home_files/mobile_161946879277m.jpg', '인천 둘레길 6코스 남동 생태누리길', '설렘가득여행', '온통인천', '인천 둘레길 6코스는 인천대공원,', '2017. 11. 20. 17:06', '인천광역시 공식 블로그 온통인천'),
	(4, './place_home_files/mobile_161953389624c.jpg', '[명물인생] 신포시장 수제어묵 달인을 만나다!', '명물인생', 'CJ헬로', '오늘 명물인생에서 만날 명인은\r\n어묵계의 명품수제어묵을 만드는\r\n명인을 만나봤습니다.', '2017. 12. 7. 20:32', '우리동네 우리방송 \'CJ헬로\''),
	(5, './place_home_files/mobile_171532546590c.jpg', '찾아가는 과학관이 강화군을 찾아옵니다. "공존의 혁신 생체모방"', '이달의 공연, 전시회', '강화에서 놀자', '과학이란 단어는 언제 봐도 어렵고 생소합니다.', '2017. 12. 11. 18:57', '2018 올해의 관광도시 강화');
/*!40000 ALTER TABLE `placenearnew` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
