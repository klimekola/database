/*
Navicat MySQL Data Transfer

Source Server         : projekt
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-01-18 22:56:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adres`
-- ----------------------------
DROP TABLE IF EXISTS `adres`;
CREATE TABLE `adres` (
  `ID_adres` int(100) NOT NULL AUTO_INCREMENT,
  `panstwo` varchar(15) NOT NULL,
  `miasto` varchar(20) NOT NULL,
  `ulica` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_adres`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adres
-- ----------------------------
INSERT INTO `adres` VALUES ('1', 'Polska', 'Warszawa', 'Nowy Świat');
INSERT INTO `adres` VALUES ('2', 'Polska', 'Gdańska', 'Kwiatowa');
INSERT INTO `adres` VALUES ('3', 'Polska', 'Poznań', 'Polna');
INSERT INTO `adres` VALUES ('4', 'Polska', 'Poznań ', 'Dluga');
INSERT INTO `adres` VALUES ('5', 'Polska', 'Wrocław', 'Fabryczna');
INSERT INTO `adres` VALUES ('6', 'Polska', 'Wrocław', 'Krakowska');
INSERT INTO `adres` VALUES ('7', 'Polska', 'Bydgoszcz', 'Sowy');
INSERT INTO `adres` VALUES ('8', 'Polska', 'Olkusz', 'Wspólna');
INSERT INTO `adres` VALUES ('9', 'Polska', 'Szczecin ', 'Owcza');
INSERT INTO `adres` VALUES ('10', 'Polska', 'Szczecin ', 'Morska');
INSERT INTO `adres` VALUES ('11', 'Polska', 'Władysławowo ', 'Spokojna');
INSERT INTO `adres` VALUES ('12', 'Polska', 'Kraków ', 'Długa');
INSERT INTO `adres` VALUES ('13', 'Polska', 'Kraków', 'Miodowa');
INSERT INTO `adres` VALUES ('14', 'Polska', 'Zakopane', 'Paryskich');
INSERT INTO `adres` VALUES ('15', 'Polska', 'Nowy Targ', 'Kopernika');
INSERT INTO `adres` VALUES ('16', 'Polska', 'Sandomierz ', 'Mickiewicza');
INSERT INTO `adres` VALUES ('17', 'Polska', 'Kielce', 'Kolberga');
INSERT INTO `adres` VALUES ('18', 'Polska', 'Rzeszów', 'Rejtana');
INSERT INTO `adres` VALUES ('19', 'Polska', 'Katowice', 'Mariacka');
INSERT INTO `adres` VALUES ('20', 'Polska', 'Opole', 'Ozimska');
INSERT INTO `adres` VALUES ('21', 'Polska', 'Kraków', 'Podchorążych');
INSERT INTO `adres` VALUES ('22', 'Polska', 'Warszawa', 'Mickiewicza');
INSERT INTO `adres` VALUES ('23', 'Polska', 'Zakopane', 'Zamoyskiego');

-- ----------------------------
-- Table structure for `album`
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `ID_album` int(100) NOT NULL AUTO_INCREMENT,
  `nazwa_albumu` varchar(100) NOT NULL,
  `czas_trwania` time NOT NULL,
  `data_wydania` date NOT NULL,
  `liczba_goscinnych_wystapien` int(40) DEFAULT NULL,
  PRIMARY KEY (`ID_album`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', 'After Hours', '00:56:12', '2020-03-20', '0');
INSERT INTO `album` VALUES ('2', 'Symphony', '00:03:32', '2017-03-17', '1');
INSERT INTO `album` VALUES ('3', 'Królowa dram', '01:06:24', '2020-05-08', '0');
INSERT INTO `album` VALUES ('4', 'Under the Willow Tree', '00:13:00', '2013-10-20', '0');
INSERT INTO `album` VALUES ('5', 'Some Say - EP', '00:12:59', '2020-06-12', '0');
INSERT INTO `album` VALUES ('6', 'A Star Is Born', '01:10:01', '2018-10-05', '1');
INSERT INTO `album` VALUES ('7', 'Nevermind', '00:49:22', '1991-09-24', '0');
INSERT INTO `album` VALUES ('8', 'Najemnik', '00:43:00', '1989-05-10', '0');
INSERT INTO `album` VALUES ('9', 'Perfect', '00:40:36', '1981-06-23', '0');
INSERT INTO `album` VALUES ('10', 'Pachelbel\'s Greatest Hit: Canon In D', '01:53:22', '1996-07-31', null);
INSERT INTO `album` VALUES ('11', 'Sanremo ’85', '01:00:23', '1985-11-07', null);
INSERT INTO `album` VALUES ('12', 'The Kids Are Coming', '00:20:34', '2019-08-30', null);
INSERT INTO `album` VALUES ('13', 'I Am... Sasha Fierce', '00:41:40', '2008-11-14', '0');
INSERT INTO `album` VALUES ('14', 'Lubię Być Z Nią', '00:03:51', '2020-09-04', null);
INSERT INTO `album` VALUES ('15', 'Beautiful Madness', '00:03:00', '2020-06-08', '0');
INSERT INTO `album` VALUES ('16', 'Męskie granie 2018', '01:02:50', '2018-11-16', null);
INSERT INTO `album` VALUES ('17', 'Yellow Submarine', '00:40:12', '1969-01-17', null);

-- ----------------------------
-- Table structure for `album_nalezacy_do_wykonawcy`
-- ----------------------------
DROP TABLE IF EXISTS `album_nalezacy_do_wykonawcy`;
CREATE TABLE `album_nalezacy_do_wykonawcy` (
  `ID_album` int(100) NOT NULL,
  `ID_wykonawcy` int(100) NOT NULL,
  KEY `ID_album` (`ID_album`),
  KEY `ID_wykonawcy` (`ID_wykonawcy`),
  CONSTRAINT `album_nalezacy_do_wykonawcy_ibfk_1` FOREIGN KEY (`ID_album`) REFERENCES `album` (`ID_album`) ON UPDATE CASCADE,
  CONSTRAINT `album_nalezacy_do_wykonawcy_ibfk_2` FOREIGN KEY (`ID_wykonawcy`) REFERENCES `wykonawca` (`ID_wykonawca`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album_nalezacy_do_wykonawcy
-- ----------------------------
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('1', '10');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('3', '15');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('4', '2');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('5', '5');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('6', '3');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('6', '4');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('7', '1');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('8', '7');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('9', '8');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('10', '6');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('11', '9');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('12', '18');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('13', '17');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('14', '16');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('15', '11');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('16', '12');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('16', '13');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('16', '14');
INSERT INTO `album_nalezacy_do_wykonawcy` VALUES ('17', '19');

-- ----------------------------
-- Table structure for `czlonek_zespolu`
-- ----------------------------
DROP TABLE IF EXISTS `czlonek_zespolu`;
CREATE TABLE `czlonek_zespolu` (
  `ID_zespol` int(100) NOT NULL,
  `ID_osoba` int(100) NOT NULL,
  `data_dolaczenia` date DEFAULT NULL,
  `data_odejscia` date DEFAULT NULL,
  KEY `ID_zespol` (`ID_zespol`),
  KEY `ID_osoba` (`ID_osoba`),
  CONSTRAINT `czlonek_zespolu_ibfk_2` FOREIGN KEY (`ID_osoba`) REFERENCES `osoba` (`ID_osoba`) ON UPDATE CASCADE,
  CONSTRAINT `czlonek_zespolu_ibfk_3` FOREIGN KEY (`ID_zespol`) REFERENCES `zespol` (`ID_zespolu`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of czlonek_zespolu
-- ----------------------------
INSERT INTO `czlonek_zespolu` VALUES ('1', '5', '1987-03-12', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('1', '6', '1987-03-12', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('1', '7', '1987-03-12', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('1', '8', '1897-03-12', '1988-04-10');
INSERT INTO `czlonek_zespolu` VALUES ('1', '9', '1988-01-08', '1990-12-07');
INSERT INTO `czlonek_zespolu` VALUES ('1', '10', '1988-01-30', '1990-12-07');
INSERT INTO `czlonek_zespolu` VALUES ('1', '11', '1989-03-19', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('1', '12', '1988-05-18', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('1', '13', '1990-08-26', '1994-04-05');
INSERT INTO `czlonek_zespolu` VALUES ('2', '16', '1973-05-08', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '17', '1973-05-08', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '18', '1981-02-26', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '19', '2005-06-20', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '20', '1988-04-18', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '21', '1973-12-01', '1994-07-30');
INSERT INTO `czlonek_zespolu` VALUES ('3', '24', '1997-06-30', null);
INSERT INTO `czlonek_zespolu` VALUES ('3', '25', '1999-08-19', null);
INSERT INTO `czlonek_zespolu` VALUES ('3', '26', '1989-07-25', null);
INSERT INTO `czlonek_zespolu` VALUES ('3', '27', '1980-12-08', '2020-04-20');
INSERT INTO `czlonek_zespolu` VALUES ('5', '28', '1981-01-25', '1986-03-29');
INSERT INTO `czlonek_zespolu` VALUES ('5', '29', '1981-01-25', '1986-03-29');
INSERT INTO `czlonek_zespolu` VALUES ('2', '15', '2001-02-15', null);
INSERT INTO `czlonek_zespolu` VALUES ('3', '23', '1980-05-26', null);
INSERT INTO `czlonek_zespolu` VALUES ('2', '22', '1995-03-08', '2001-01-20');
INSERT INTO `czlonek_zespolu` VALUES ('4', '1', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '2', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '3', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '4', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '30', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '31', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '35', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '26', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '37', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('6', '32', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('6', '33', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('6', '34', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('4', '38', null, null);
INSERT INTO `czlonek_zespolu` VALUES ('7', '39', '1960-04-25', '1970-05-30');
INSERT INTO `czlonek_zespolu` VALUES ('7', '40', '1960-04-25', '1970-05-30');
INSERT INTO `czlonek_zespolu` VALUES ('7', '41', '1960-04-25', '1970-05-30');
INSERT INTO `czlonek_zespolu` VALUES ('7', '42', '1962-08-31', '1970-05-30');
INSERT INTO `czlonek_zespolu` VALUES ('7', '43', '1960-08-25', '1962-08-16');
INSERT INTO `czlonek_zespolu` VALUES ('7', '44', '1960-04-25', '1960-06-30');

-- ----------------------------
-- Table structure for `komentarz`
-- ----------------------------
DROP TABLE IF EXISTS `komentarz`;
CREATE TABLE `komentarz` (
  `ID_komentarz` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_utworu` int(10) NOT NULL,
  `tresc` varchar(6000) DEFAULT NULL,
  `ID_autor` int(10) NOT NULL,
  `czas` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ID_root_komentarz` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_komentarz`),
  KEY `ID_utworu` (`ID_utworu`),
  KEY `ID_root_komentarz` (`ID_root_komentarz`),
  CONSTRAINT `komentarz_ibfk_1` FOREIGN KEY (`ID_utworu`) REFERENCES `utwor` (`ID_utworu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `komentarz_ibfk_2` FOREIGN KEY (`ID_root_komentarz`) REFERENCES `komentarz` (`ID_komentarz`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of komentarz
-- ----------------------------
INSERT INTO `komentarz` VALUES ('1', '2', 'piekna piosenka', '2', null, null);
INSERT INTO `komentarz` VALUES ('2', '5', 'czad', '5', null, '1');

-- ----------------------------
-- Table structure for `koncert`
-- ----------------------------
DROP TABLE IF EXISTS `koncert`;
CREATE TABLE `koncert` (
  `ID_koncert` int(10) NOT NULL AUTO_INCREMENT,
  `data_koncertu` date DEFAULT NULL,
  `miejscowosc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_koncert`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 WITH SYSTEM VERSIONING
 PARTITION BY SYSTEM_TIME 
(PARTITION `p_historia` HISTORY ENGINE = InnoDB,
 PARTITION `p_aktualnie` CURRENT ENGINE = InnoDB);

-- ----------------------------
-- Records of koncert
-- ----------------------------
INSERT INTO `koncert` VALUES ('1', '2020-01-20', 'Krakow');
INSERT INTO `koncert` VALUES ('2', '2018-08-26', 'Warszawa');
INSERT INTO `koncert` VALUES ('3', '2015-04-30', 'Katowice');
INSERT INTO `koncert` VALUES ('4', '2000-05-01', 'Kielce');
INSERT INTO `koncert` VALUES ('5', '2009-01-08', 'Poznan');

-- ----------------------------
-- Table structure for `okladka`
-- ----------------------------
DROP TABLE IF EXISTS `okladka`;
CREATE TABLE `okladka` (
  `ID_okladka_albumu` int(10) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `rok_premiery` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
 PARTITION BY RANGE (`rok_premiery`)
(PARTITION `p0` VALUES LESS THAN (1980) ENGINE = InnoDB,
 PARTITION `p1` VALUES LESS THAN (1990) ENGINE = InnoDB,
 PARTITION `p2` VALUES LESS THAN (2000) ENGINE = InnoDB,
 PARTITION `p3` VALUES LESS THAN (2010) ENGINE = InnoDB,
 PARTITION `p4` VALUES LESS THAN MAXVALUE ENGINE = InnoDB);

-- ----------------------------
-- Records of okladka
-- ----------------------------
INSERT INTO `okladka` VALUES ('7', 'Najemnik', '1989');
INSERT INTO `okladka` VALUES ('8', 'Perfect', '1981');
INSERT INTO `okladka` VALUES ('6', 'Nevermind', '1991');
INSERT INTO `okladka` VALUES ('9', 'Pachelbel\'s Greatest Hit: Canon In D', '1996');
INSERT INTO `okladka` VALUES ('1', 'After Hours', '2020');
INSERT INTO `okladka` VALUES ('2', 'KrĂłlowa dram', '2020');
INSERT INTO `okladka` VALUES ('3', 'Under the Willow Tree', '2013');
INSERT INTO `okladka` VALUES ('4', 'Some Say - EP', '2020');
INSERT INTO `okladka` VALUES ('5', 'A Star Is Born', '2018');

-- ----------------------------
-- Table structure for `osoba`
-- ----------------------------
DROP TABLE IF EXISTS `osoba`;
CREATE TABLE `osoba` (
  `ID_osoba` int(100) NOT NULL AUTO_INCREMENT,
  `imie` varchar(72) NOT NULL,
  `nazwisko` varchar(73) NOT NULL,
  `pseudonim` varchar(77) DEFAULT '',
  `plec` varchar(20) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_osoba`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osoba
-- ----------------------------
INSERT INTO `osoba` VALUES ('1', 'Jasmine', 'Thompson', null, 'K', '20');
INSERT INTO `osoba` VALUES ('2', 'Bradley', 'Cooper', null, 'M', '45');
INSERT INTO `osoba` VALUES ('3', 'Stefani Joanne Angelina', 'Germanotta', 'Lady Gaga', 'K', '34');
INSERT INTO `osoba` VALUES ('4', 'Anna Linnea', ' Södahl ', 'Nea', 'K', '33');
INSERT INTO `osoba` VALUES ('5', 'Kurt ', 'Cobain', null, 'M', '27');
INSERT INTO `osoba` VALUES ('6', 'Krist', 'Novoselic', 'Novie', 'M', '55');
INSERT INTO `osoba` VALUES ('7', 'David ', 'Grohl', 'Dave', 'M', '51');
INSERT INTO `osoba` VALUES ('8', 'Aaron ', 'Burckhard', null, 'M', '57');
INSERT INTO `osoba` VALUES ('9', 'Chad', 'Channing', null, 'M', '53');
INSERT INTO `osoba` VALUES ('10', 'Dale', 'Crover', null, 'M', '53');
INSERT INTO `osoba` VALUES ('11', 'Jason', 'Everman', null, 'M', '53');
INSERT INTO `osoba` VALUES ('12', 'Dave', 'Foster', null, 'M', '71');
INSERT INTO `osoba` VALUES ('13', 'Dan ', 'Peters', null, 'M', '53');
INSERT INTO `osoba` VALUES ('14', 'Johann', 'Pachelbel', null, 'M', '53');
INSERT INTO `osoba` VALUES ('15', 'Maciej', 'Balcar', null, 'M', '50');
INSERT INTO `osoba` VALUES ('16', 'Adam ', 'Otręba', null, 'M', '69');
INSERT INTO `osoba` VALUES ('17', 'Benedykt', 'Otręba', 'Beno', 'M', '70');
INSERT INTO `osoba` VALUES ('18', 'Jerzy ', 'Styczyński', null, 'M', '63');
INSERT INTO `osoba` VALUES ('19', 'Janusz ', 'Borzucki', null, 'M', '51');
INSERT INTO `osoba` VALUES ('20', 'Zbigniew ', 'Szczerbiński', null, 'M', '54');
INSERT INTO `osoba` VALUES ('21', 'Ryszard ', 'Riedel', null, 'M', '38');
INSERT INTO `osoba` VALUES ('22', 'Jacek', 'Dewódzki', null, 'M', '57');
INSERT INTO `osoba` VALUES ('23', 'Grzegorz', 'Markowski', null, 'M', '68');
INSERT INTO `osoba` VALUES ('24', 'Dariusz', 'Kozakiewicz', null, 'M', '68');
INSERT INTO `osoba` VALUES ('25', 'Piotr', 'Urbanek', null, 'M', '57');
INSERT INTO `osoba` VALUES ('26', 'Jacek ', 'Krzaklewski', null, 'M', '71');
INSERT INTO `osoba` VALUES ('27', 'Piotr ', 'Szkudelski', null, 'M', '66');
INSERT INTO `osoba` VALUES ('28', 'Andrew', 'Ridgeley', null, 'M', '58');
INSERT INTO `osoba` VALUES ('29', 'Georgios', 'Panjiotu', 'George Michael', 'M', '58');
INSERT INTO `osoba` VALUES ('30', 'Abel Makkonen', 'Tesfaye', 'The Weeknd', 'M', '31');
INSERT INTO `osoba` VALUES ('31', 'Michael Patrick', 'Kelly', 'Paddy Kelly', 'M', '43');
INSERT INTO `osoba` VALUES ('32', 'Łukasz ', 'Federkiewicz', 'Kortez', 'M', '32');
INSERT INTO `osoba` VALUES ('33', 'Dawid ', 'Podsiadło', 'David Ross', 'M', '28');
INSERT INTO `osoba` VALUES ('34', 'Krzysztof ', 'Zalewski', 'Zalef', 'M', '37');
INSERT INTO `osoba` VALUES ('35', 'Toni', 'Watson', 'Tones and I', 'K', '21');
INSERT INTO `osoba` VALUES ('36', 'Beyonce Giselle', 'Knowles-Carter', 'Beyonce', 'K', '40');
INSERT INTO `osoba` VALUES ('37', 'Wojciech ', 'Baranowski', 'Baranovski', 'M', '30');
INSERT INTO `osoba` VALUES ('38', 'Zuzanna', 'Jurczak', 'Sanah', 'K', '24');
INSERT INTO `osoba` VALUES ('39', 'John ', 'Lennon', '', 'M', '40');
INSERT INTO `osoba` VALUES ('40', 'Paul', 'McCartney', '', 'M', '79');
INSERT INTO `osoba` VALUES ('41', 'George', 'Harrison', '', 'M', '78');
INSERT INTO `osoba` VALUES ('42', 'Richard', 'Starkey', 'Ringo Starr', 'M', '81');
INSERT INTO `osoba` VALUES ('43', 'Randolph Peter', 'Best', 'Randolph Peter Scanland', 'M', '80');
INSERT INTO `osoba` VALUES ('44', 'Norman', 'Chapman', '', 'M', '58');

-- ----------------------------
-- Table structure for `s3`
-- ----------------------------
DROP TABLE IF EXISTS `s3`;
CREATE TABLE `s3` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- ----------------------------
-- Records of s3
-- ----------------------------
INSERT INTO `s3` VALUES ('1001', '1', '9223372036854775806', '1', '1', '1000', '0', '0');

-- ----------------------------
-- Table structure for `ulubiona_piosenka`
-- ----------------------------
DROP TABLE IF EXISTS `ulubiona_piosenka`;
CREATE TABLE `ulubiona_piosenka` (
  `ID_uzytkownicy` int(100) NOT NULL,
  `ID_utworu` int(100) NOT NULL,
  UNIQUE KEY `ID_uzytkownicy` (`ID_uzytkownicy`) USING BTREE,
  KEY `ID_utworu` (`ID_utworu`),
  CONSTRAINT `ulubiona_piosenka_ibfk_1` FOREIGN KEY (`ID_uzytkownicy`) REFERENCES `uzytkownicy` (`ID_uzytkownicy`) ON UPDATE CASCADE,
  CONSTRAINT `ulubiona_piosenka_ibfk_2` FOREIGN KEY (`ID_utworu`) REFERENCES `utwor` (`ID_utworu`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ulubiona_piosenka
-- ----------------------------
INSERT INTO `ulubiona_piosenka` VALUES ('2', '1');
INSERT INTO `ulubiona_piosenka` VALUES ('9', '1');
INSERT INTO `ulubiona_piosenka` VALUES ('22', '1');
INSERT INTO `ulubiona_piosenka` VALUES ('31', '1');
INSERT INTO `ulubiona_piosenka` VALUES ('8', '2');
INSERT INTO `ulubiona_piosenka` VALUES ('15', '3');
INSERT INTO `ulubiona_piosenka` VALUES ('20', '3');
INSERT INTO `ulubiona_piosenka` VALUES ('4', '4');
INSERT INTO `ulubiona_piosenka` VALUES ('16', '4');
INSERT INTO `ulubiona_piosenka` VALUES ('3', '5');
INSERT INTO `ulubiona_piosenka` VALUES ('13', '5');
INSERT INTO `ulubiona_piosenka` VALUES ('32', '5');
INSERT INTO `ulubiona_piosenka` VALUES ('34', '5');
INSERT INTO `ulubiona_piosenka` VALUES ('18', '6');
INSERT INTO `ulubiona_piosenka` VALUES ('21', '6');
INSERT INTO `ulubiona_piosenka` VALUES ('1', '7');
INSERT INTO `ulubiona_piosenka` VALUES ('12', '7');
INSERT INTO `ulubiona_piosenka` VALUES ('17', '7');
INSERT INTO `ulubiona_piosenka` VALUES ('35', '8');
INSERT INTO `ulubiona_piosenka` VALUES ('11', '9');
INSERT INTO `ulubiona_piosenka` VALUES ('29', '9');
INSERT INTO `ulubiona_piosenka` VALUES ('30', '10');
INSERT INTO `ulubiona_piosenka` VALUES ('25', '11');
INSERT INTO `ulubiona_piosenka` VALUES ('14', '12');
INSERT INTO `ulubiona_piosenka` VALUES ('5', '13');
INSERT INTO `ulubiona_piosenka` VALUES ('24', '13');
INSERT INTO `ulubiona_piosenka` VALUES ('28', '13');
INSERT INTO `ulubiona_piosenka` VALUES ('19', '14');
INSERT INTO `ulubiona_piosenka` VALUES ('27', '14');
INSERT INTO `ulubiona_piosenka` VALUES ('23', '15');
INSERT INTO `ulubiona_piosenka` VALUES ('26', '16');
INSERT INTO `ulubiona_piosenka` VALUES ('7', '17');
INSERT INTO `ulubiona_piosenka` VALUES ('33', '17');

-- ----------------------------
-- Table structure for `utwor`
-- ----------------------------
DROP TABLE IF EXISTS `utwor`;
CREATE TABLE `utwor` (
  `ID_utworu` int(100) NOT NULL AUTO_INCREMENT,
  `nazwa_utworu` varchar(50) NOT NULL,
  `czas` time NOT NULL,
  `data_nagrania` date NOT NULL,
  `liczba_odtworzen` varchar(200) NOT NULL,
  `numer_w_albumie` int(50) NOT NULL,
  `gatunek` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_utworu`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utwor
-- ----------------------------
INSERT INTO `utwor` VALUES ('1', 'Willow', '00:03:46', '2014-11-17', '17000895', '1', 'pop');
INSERT INTO `utwor` VALUES ('2', 'Some Say', '00:02:56', '2019-11-25', '37131904', '3', 'pop');
INSERT INTO `utwor` VALUES ('3', 'Shallow', '00:03:36', '2018-09-27', '972391710', '2', 'pop');
INSERT INTO `utwor` VALUES ('4', 'Smells Like Teen Spirit', '00:04:39', '1991-06-17', '1155687687', '7', 'rock');
INSERT INTO `utwor` VALUES ('5', 'Wehikuł Czasu', '00:06:10', '1989-05-30', '105976234', '5', 'rock');
INSERT INTO `utwor` VALUES ('6', 'Nie Płacz Ewka', '00:05:43', '1981-10-08', '987635789', '4', 'rock');
INSERT INTO `utwor` VALUES ('7', 'Canon in D', '00:06:16', '2008-01-26', '65444488', '1', 'klasyczny');
INSERT INTO `utwor` VALUES ('8', 'Last Christmas', '00:04:39', '2009-10-25', '523838884', '2', 'pop');
INSERT INTO `utwor` VALUES ('9', 'Blinding Lights', '00:04:22', '2019-11-29', '330290684', '6', 'pop');
INSERT INTO `utwor` VALUES ('10', 'In Your Eyes', '00:03:57', '2020-01-10', '44919819', '5', 'soul');
INSERT INTO `utwor` VALUES ('11', 'Szampan', '00:03:22', '2020-01-03', '52869398', '2', 'pop');
INSERT INTO `utwor` VALUES ('12', 'Królowa dram', '00:03:03', '2020-05-01', '11490962', '6', 'pop');
INSERT INTO `utwor` VALUES ('13', 'Lubie być z nią', '00:03:51', '2020-09-04', '15719931', '10', 'pop');
INSERT INTO `utwor` VALUES ('14', 'Beautiful Madness', '00:03:00', '2020-06-08', '17813523', '9', 'pop');
INSERT INTO `utwor` VALUES ('15', 'Początek', '00:03:56', '2018-05-23', '113657734', '1', 'pop');
INSERT INTO `utwor` VALUES ('16', 'Dance Monkey ', '00:03:57', '2019-05-10', '1445785418', '1', 'elektropop');
INSERT INTO `utwor` VALUES ('17', 'Single Ladies', '00:03:18', '2008-10-13', '798371178', '2', 'blues');
INSERT INTO `utwor` VALUES ('18', 'Yellow Submarine', '00:02:45', '1966-08-05', '644599968', '4', 'rock');

-- ----------------------------
-- Table structure for `utwory_w_albumie`
-- ----------------------------
DROP TABLE IF EXISTS `utwory_w_albumie`;
CREATE TABLE `utwory_w_albumie` (
  `ID_albumu` int(100) NOT NULL,
  `ID_utworu` int(100) NOT NULL,
  KEY `ID_albumu` (`ID_albumu`),
  KEY `ID_utworu` (`ID_utworu`),
  CONSTRAINT `utwory_w_albumie_ibfk_1` FOREIGN KEY (`ID_albumu`) REFERENCES `album` (`ID_album`) ON UPDATE CASCADE,
  CONSTRAINT `utwory_w_albumie_ibfk_2` FOREIGN KEY (`ID_utworu`) REFERENCES `utwor` (`ID_utworu`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utwory_w_albumie
-- ----------------------------
INSERT INTO `utwory_w_albumie` VALUES ('1', '9');
INSERT INTO `utwory_w_albumie` VALUES ('1', '10');
INSERT INTO `utwory_w_albumie` VALUES ('4', '1');
INSERT INTO `utwory_w_albumie` VALUES ('5', '2');
INSERT INTO `utwory_w_albumie` VALUES ('6', '3');
INSERT INTO `utwory_w_albumie` VALUES ('7', '4');
INSERT INTO `utwory_w_albumie` VALUES ('8', '5');
INSERT INTO `utwory_w_albumie` VALUES ('9', '6');
INSERT INTO `utwory_w_albumie` VALUES ('10', '7');
INSERT INTO `utwory_w_albumie` VALUES ('11', '8');
INSERT INTO `utwory_w_albumie` VALUES ('3', '11');
INSERT INTO `utwory_w_albumie` VALUES ('3', '12');
INSERT INTO `utwory_w_albumie` VALUES ('14', '13');
INSERT INTO `utwory_w_albumie` VALUES ('12', '17');
INSERT INTO `utwory_w_albumie` VALUES ('13', '16');
INSERT INTO `utwory_w_albumie` VALUES ('15', '16');
INSERT INTO `utwory_w_albumie` VALUES ('16', '15');
INSERT INTO `utwory_w_albumie` VALUES ('17', '18');

-- ----------------------------
-- Table structure for `utwor_wykonawca`
-- ----------------------------
DROP TABLE IF EXISTS `utwor_wykonawca`;
CREATE TABLE `utwor_wykonawca` (
  `ID_utworu` int(100) NOT NULL,
  `ID_wykonawca` int(100) NOT NULL,
  KEY `ID_utworu` (`ID_utworu`),
  KEY `ID_wykonawca` (`ID_wykonawca`),
  CONSTRAINT `utwor_wykonawca_ibfk_1` FOREIGN KEY (`ID_utworu`) REFERENCES `utwor` (`ID_utworu`) ON UPDATE CASCADE,
  CONSTRAINT `utwor_wykonawca_ibfk_2` FOREIGN KEY (`ID_wykonawca`) REFERENCES `wykonawca` (`ID_wykonawca`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utwor_wykonawca
-- ----------------------------
INSERT INTO `utwor_wykonawca` VALUES ('1', '2');
INSERT INTO `utwor_wykonawca` VALUES ('2', '5');
INSERT INTO `utwor_wykonawca` VALUES ('3', '3');
INSERT INTO `utwor_wykonawca` VALUES ('3', '4');
INSERT INTO `utwor_wykonawca` VALUES ('4', '1');
INSERT INTO `utwor_wykonawca` VALUES ('5', '7');
INSERT INTO `utwor_wykonawca` VALUES ('6', '8');
INSERT INTO `utwor_wykonawca` VALUES ('7', '6');
INSERT INTO `utwor_wykonawca` VALUES ('8', '9');
INSERT INTO `utwor_wykonawca` VALUES ('9', '10');
INSERT INTO `utwor_wykonawca` VALUES ('10', '10');
INSERT INTO `utwor_wykonawca` VALUES ('11', '15');
INSERT INTO `utwor_wykonawca` VALUES ('12', '15');
INSERT INTO `utwor_wykonawca` VALUES ('13', '16');
INSERT INTO `utwor_wykonawca` VALUES ('14', '11');
INSERT INTO `utwor_wykonawca` VALUES ('15', '12');
INSERT INTO `utwor_wykonawca` VALUES ('15', '13');
INSERT INTO `utwor_wykonawca` VALUES ('15', '14');
INSERT INTO `utwor_wykonawca` VALUES ('16', '18');
INSERT INTO `utwor_wykonawca` VALUES ('17', '17');
INSERT INTO `utwor_wykonawca` VALUES ('18', '19');

-- ----------------------------
-- Table structure for `uzytkownicy`
-- ----------------------------
DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `ID_uzytkownicy` int(100) NOT NULL AUTO_INCREMENT,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(80) NOT NULL,
  `login` varchar(30) NOT NULL,
  `Email_Adres` varchar(25) DEFAULT NULL,
  `haslo` varchar(25) DEFAULT NULL,
  `ID_adres` int(100) NOT NULL,
  PRIMARY KEY (`ID_uzytkownicy`),
  UNIQUE KEY `login` (`login`) USING BTREE,
  UNIQUE KEY `Email_Adres` (`Email_Adres`),
  KEY `ID_adres` (`ID_adres`),
  CONSTRAINT `uzytkownicy_ibfk_1` FOREIGN KEY (`ID_adres`) REFERENCES `adres` (`ID_adres`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 WITH SYSTEM VERSIONING;

-- ----------------------------
-- Records of uzytkownicy
-- ----------------------------
INSERT INTO `uzytkownicy` VALUES ('1', 'Anna', 'Nowak', 'qwerty', 'ala.kot45@gmail.com', '12345', '1');
INSERT INTO `uzytkownicy` VALUES ('2', 'Maria', 'Kowal', 'trewq', 'tomek.kot@gmail.com', '23659', '4');
INSERT INTO `uzytkownicy` VALUES ('3', 'Tomasz', 'Kot', 'loh2', 'wert@gmail.com', '89566', '2');
INSERT INTO `uzytkownicy` VALUES ('4', 'Anna', 'Lis', 'dswe3', 'pinokio@wp.pl', '89ry67', '4');
INSERT INTO `uzytkownicy` VALUES ('5', 'Mateusz', 'Michura', 'qazxsw3', 'blelo@wp.pl', 'werty8', '3');
INSERT INTO `uzytkownicy` VALUES ('6', 'Urszula', 'Nowak ', 'yurscf', 'ulka@gmail.com', 'wertew', '7');
INSERT INTO `uzytkownicy` VALUES ('7', 'Waldemar', 'Koza', 'koza123', 'waldi@wp.pl', 'wsxcde', '19');
INSERT INTO `uzytkownicy` VALUES ('8', 'Wioletta', 'Willas', 'wiolka', 'willas@gmail.com', '158526', '9');
INSERT INTO `uzytkownicy` VALUES ('9', 'Wiktoria', 'Nowak', 'nowak1234', 'wikinow@o2.pl', 'qwerty', '14');
INSERT INTO `uzytkownicy` VALUES ('10', 'Elżbieta', 'Sądel', 'elap', 'sadel@o2.pl', '963258', '10');
INSERT INTO `uzytkownicy` VALUES ('11', 'Aleksandra', 'Stanisławczyk', 'olasta', 'stanislaw@gmail.com', 'plmnko', '15');
INSERT INTO `uzytkownicy` VALUES ('12', 'Kamil ', 'Król ', 'kkkrol', 'krol@wp.pl', 'poiuyt', '2');
INSERT INTO `uzytkownicy` VALUES ('13', 'Weronika ', 'Wiktor ', 'ww342', 'wiktorw@wp.pl', 'wwweqq', '4');
INSERT INTO `uzytkownicy` VALUES ('14', 'Ola', 'Kot', 'ola', 'ola.kot@wp.pl', 'lpo', '4');
INSERT INTO `uzytkownicy` VALUES ('15', 'Anna', 'Boryna', 'anna', 'boryna@wp.pl', 'poqwrt', '15');
INSERT INTO `uzytkownicy` VALUES ('16', 'Kacper', 'Królikowski', 'kacper', 'kacpi@gmail.com', 'eqdggsq', '19');
INSERT INTO `uzytkownicy` VALUES ('17', 'Wioletta', 'Kasprowicz', 'wiolka8', 'wiola@op.pl', 'qwdwo', '1');
INSERT INTO `uzytkownicy` VALUES ('18', 'Emilia', 'Komar', 'komarek', 'ekomar@wp.pl', '1469686', '4');
INSERT INTO `uzytkownicy` VALUES ('19', 'Nadia ', 'Góra', 'nadiag', 'gora@wp.pl', '1885jgj', '3');
INSERT INTO `uzytkownicy` VALUES ('20', 'Weronika', 'Lis', 'werka2', 'werka@gmail.com', '59648sd5', '8');
INSERT INTO `uzytkownicy` VALUES ('21', 'Kamil', 'Lis', 'loginnowy4', 'kamil.lis@op.pl', '5adsw4m', '16');
INSERT INTO `uzytkownicy` VALUES ('22', 'Aleksander', 'Nowak', 'nowak', 'nowak@gmail.com', 'rtsdfdg', '10');
INSERT INTO `uzytkownicy` VALUES ('23', 'Eugeniusz', 'Kot', 'eugeniusz', 'kot@op.pl', '47rer77g', '12');
INSERT INTO `uzytkownicy` VALUES ('24', 'Jan', 'Kowalski', 'jankowal', 'kowalskijan@op.pl', '856fee6e', '23');
INSERT INTO `uzytkownicy` VALUES ('25', 'Zofia ', 'Kalarepa', 'zosia234', 'kalarepa88@gmail.com', 'wrtdsew34', '20');
INSERT INTO `uzytkownicy` VALUES ('26', 'Marzena', 'Szpak', 'szpakma', 'marzenka@wp.pl', 'dfgfdfgsdb', '21');
INSERT INTO `uzytkownicy` VALUES ('27', 'Izabela ', 'Łącka', 'lacka345', 'izkalacka@op.pl', 'asdfghsd', '18');
INSERT INTO `uzytkownicy` VALUES ('28', 'Szymon', 'Golonka', 'golonka', 'golonkasz@gmail.com', 'sdfghjswer', '19');
INSERT INTO `uzytkownicy` VALUES ('29', 'Nadia', 'Wesołowska', 'nadii00', 'wesolowska@op.pl', 'poiuytrewe', '20');
INSERT INTO `uzytkownicy` VALUES ('30', 'Konrad', 'Witos', 'kondzio', 'kwitos90@o2.pl', 'komlpnji', '22');
INSERT INTO `uzytkownicy` VALUES ('31', 'Ewa', 'Kaczka', 'ewka3456', 'ewa@op.pl', '12345678', '5');
INSERT INTO `uzytkownicy` VALUES ('32', 'Alicja', 'Kwiatkowska', 'alakwiat', null, 'jhgfds', '17');
INSERT INTO `uzytkownicy` VALUES ('33', 'Kacper', 'Orzeł', 'kacper007', null, '225lhfghj', '10');
INSERT INTO `uzytkownicy` VALUES ('34', 'Izabela', 'Florek', 'izkaf45', 'flore@o2.pl', 'kotekf34', '6');
INSERT INTO `uzytkownicy` VALUES ('35', 'Jakub', 'Puch', 'kubap', 'jpuch543@gmail.com', 'lk952jh', '23');
INSERT INTO `uzytkownicy` VALUES ('36', 'Dawid', 'Sajdak', 'dawid000', 'sajdak@op.pl', 'qwertyuiop', '11');
INSERT INTO `uzytkownicy` VALUES ('37', 'Katarzyna', 'Zelek', 'zelek3333', 'ka.zelek90@gmail.com', '963wertgf', '13');
INSERT INTO `uzytkownicy` VALUES ('38', 'Zofia ', 'Kwiatkowska', 'zosiakwiat', 'kwiatkowska56@o2.pl', 'z8o9s7i6a3', '11');
INSERT INTO `uzytkownicy` VALUES ('39', 'Adam', 'Nowak', 'nowakadas', 'a.nowa78@hmail.com', '95dsdf66', '22');
INSERT INTO `uzytkownicy` VALUES ('41', 'Jakub', 'Bednarz', 'pokemon', 'bednarz88@wp.pl', 'lkjhgfdddd', '17');

-- ----------------------------
-- Table structure for `wykonawca`
-- ----------------------------
DROP TABLE IF EXISTS `wykonawca`;
CREATE TABLE `wykonawca` (
  `ID_wykonawca` int(10) NOT NULL,
  `ID_osoba` int(10) NOT NULL,
  `ID_zespol` int(10) NOT NULL,
  `osoba_zespol` enum('zespol','osoba') NOT NULL,
  PRIMARY KEY (`ID_wykonawca`,`ID_osoba`,`ID_zespol`),
  KEY `ID_wykonawca` (`ID_wykonawca`),
  KEY `ID_zespol` (`ID_zespol`),
  KEY `ID_osoba` (`ID_osoba`),
  CONSTRAINT `wykonawca_ibfk_1` FOREIGN KEY (`ID_zespol`) REFERENCES `zespol` (`ID_zespolu`) ON UPDATE CASCADE,
  CONSTRAINT `wykonawca_ibfk_2` FOREIGN KEY (`ID_osoba`) REFERENCES `osoba` (`ID_osoba`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wykonawca
-- ----------------------------
INSERT INTO `wykonawca` VALUES ('1', '5', '1', 'zespol');
INSERT INTO `wykonawca` VALUES ('2', '1', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('3', '2', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('4', '3', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('5', '4', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('6', '14', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('7', '15', '2', 'zespol');
INSERT INTO `wykonawca` VALUES ('8', '23', '3', 'zespol');
INSERT INTO `wykonawca` VALUES ('9', '28', '5', 'zespol');
INSERT INTO `wykonawca` VALUES ('10', '30', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('11', '31', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('12', '32', '6', 'zespol');
INSERT INTO `wykonawca` VALUES ('13', '33', '6', 'zespol');
INSERT INTO `wykonawca` VALUES ('14', '34', '6', 'zespol');
INSERT INTO `wykonawca` VALUES ('15', '38', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('16', '37', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('17', '36', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('18', '35', '4', 'osoba');
INSERT INTO `wykonawca` VALUES ('19', '39', '7', 'zespol');

-- ----------------------------
-- Table structure for `zespol`
-- ----------------------------
DROP TABLE IF EXISTS `zespol`;
CREATE TABLE `zespol` (
  `ID_zespolu` int(100) NOT NULL,
  `liczba_czlonkow` int(20) DEFAULT NULL,
  `nazwa_zespolu` varchar(22) NOT NULL,
  `data_powstania` year(4) DEFAULT NULL,
  `data_rozpadu` varchar(4) NOT NULL DEFAULT '' COMMENT 'aktualnie',
  PRIMARY KEY (`ID_zespolu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zespol
-- ----------------------------
INSERT INTO `zespol` VALUES ('1', '10', 'Nirvana', '1987', '1994');
INSERT INTO `zespol` VALUES ('2', '8', 'Dżem', '1973', '');
INSERT INTO `zespol` VALUES ('3', '5', 'Perfect', '1980', '');
INSERT INTO `zespol` VALUES ('4', '0', 'Wokalista Solowy', null, '');
INSERT INTO `zespol` VALUES ('5', '2', 'Wham', '1981', '1986');
INSERT INTO `zespol` VALUES ('6', null, 'Męskie Granie', null, '');
INSERT INTO `zespol` VALUES ('7', '6', 'The Beatles', '1960', '1970');
INSERT INTO `zespol` VALUES ('8', '5', 'Linkin Park', '1996', '');

-- ----------------------------
-- View structure for `vadres`
-- ----------------------------
DROP VIEW IF EXISTS `vadres`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vadres` AS select `adres`.`miasto` AS `miasto`,`adres`.`ulica` AS `ulica` from `adres` ;

-- ----------------------------
-- View structure for `vadresyuzytkownikow`
-- ----------------------------
DROP VIEW IF EXISTS `vadresyuzytkownikow`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vadresyuzytkownikow` AS select `uzytkownicy`.`ID_uzytkownicy` AS `ID_uzytkownicy`,`uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`adres`.`miasto` AS `miasto`,`adres`.`ulica` AS `ulica` from (`uzytkownicy` join `adres` on(`uzytkownicy`.`ID_adres` = `adres`.`ID_adres`)) order by `uzytkownicy`.`ID_uzytkownicy` ;

-- ----------------------------
-- View structure for `vczlonkowiedzem`
-- ----------------------------
DROP VIEW IF EXISTS `vczlonkowiedzem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vczlonkowiedzem` AS select `czlonek_zespolu`.`ID_zespol` AS `DZEM`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko` from (`czlonek_zespolu` join `osoba` on(`czlonek_zespolu`.`ID_osoba` = `osoba`.`ID_osoba`)) where `czlonek_zespolu`.`ID_zespol` = '2' ;

-- ----------------------------
-- View structure for `vczlonkowiethebeatles`
-- ----------------------------
DROP VIEW IF EXISTS `vczlonkowiethebeatles`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vczlonkowiethebeatles` AS select `czlonek_zespolu`.`ID_zespol` AS `THE_BEATLES`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko` from (`czlonek_zespolu` join `osoba` on(`czlonek_zespolu`.`ID_osoba` = `osoba`.`ID_osoba`)) where `czlonek_zespolu`.`ID_zespol` = '7' ;

-- ----------------------------
-- View structure for `vfunkcjaconcat`
-- ----------------------------
DROP VIEW IF EXISTS `vfunkcjaconcat`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vfunkcjaconcat` AS select concat(`uzytkownicy`.`imie`,'_',`uzytkownicy`.`nazwisko`) AS `login_NEW` from `uzytkownicy` where octet_length(`uzytkownicy`.`haslo`) < 6 ;

-- ----------------------------
-- View structure for `vfunkcjadatyczasu`
-- ----------------------------
DROP VIEW IF EXISTS `vfunkcjadatyczasu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vfunkcjadatyczasu` AS select `osoba`.`ID_osoba` AS `ID_osoba`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`osoba`.`pseudonim` AS `pseudonim`,`osoba`.`plec` AS `plec`,`osoba`.`wiek` AS `wiek` from `osoba` where `osoba`.`ID_osoba` in (select `czlonek_zespolu`.`ID_osoba` from `czlonek_zespolu` where to_days(current_timestamp()) - to_days(`czlonek_zespolu`.`data_dolaczenia`) < 20 * 365 + 5) ;

-- ----------------------------
-- View structure for `vleftouterjoin`
-- ----------------------------
DROP VIEW IF EXISTS `vleftouterjoin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vleftouterjoin` AS select `uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`uzytkownicy`.`login` AS `login`,`uzytkownicy`.`Email_Adres` AS `Email_Adres`,`uzytkownicy`.`haslo` AS `haslo`,`ulubiona_piosenka`.`ID_utworu` AS `ID_utworu` from (`uzytkownicy` left join `ulubiona_piosenka` on(`ulubiona_piosenka`.`ID_uzytkownicy` = `uzytkownicy`.`ID_uzytkownicy`)) ;

-- ----------------------------
-- View structure for `vnaturaljoin`
-- ----------------------------
DROP VIEW IF EXISTS `vnaturaljoin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnaturaljoin` AS select `osoba`.`ID_osoba` AS `ID_osoba`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`osoba`.`pseudonim` AS `pseudonim`,`osoba`.`plec` AS `plec`,`osoba`.`wiek` AS `wiek`,`czlonek_zespolu`.`ID_zespol` AS `ID_zespol`,`czlonek_zespolu`.`data_dolaczenia` AS `data_dolaczenia`,`czlonek_zespolu`.`data_odejscia` AS `data_odejscia` from (`osoba` join `czlonek_zespolu` on(`osoba`.`ID_osoba` = `czlonek_zespolu`.`ID_osoba`)) ;

-- ----------------------------
-- View structure for `voperator`
-- ----------------------------
DROP VIEW IF EXISTS `voperator`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voperator` AS select `uzytkownicy`.`imie` AS `imie` from `uzytkownicy` union select `uzytkownicy`.`login` AS `login` from `uzytkownicy` order by `imie` ;

-- ----------------------------
-- View structure for `voperator2`
-- ----------------------------
DROP VIEW IF EXISTS `voperator2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voperator2` AS select `uzytkownicy`.`ID_uzytkownicy` AS `ID_uzytkownicy`,`uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`uzytkownicy`.`login` AS `login`,`uzytkownicy`.`Email_Adres` AS `Email_Adres`,`uzytkownicy`.`haslo` AS `haslo`,`uzytkownicy`.`ID_adres` AS `ID_adres` from `uzytkownicy` where `uzytkownicy`.`Email_Adres` like '%gmail.com' ;

-- ----------------------------
-- View structure for `voperatorpionowy`
-- ----------------------------
DROP VIEW IF EXISTS `voperatorpionowy`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voperatorpionowy` AS select count(0) AS `count(*)` from (select `test`.`utwor`.`data_nagrania` AS `data_nagrania` from `test`.`utwor` intersect select `test`.`album`.`data_wydania` AS `data_wydania` from `test`.`album`) `x` ;

-- ----------------------------
-- View structure for `voperatorpionowy1`
-- ----------------------------
DROP VIEW IF EXISTS `voperatorpionowy1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voperatorpionowy1` AS select `album`.`data_wydania` AS `data_wydania` from `album` except select `utwor`.`data_nagrania` AS `data_nagrania` from `utwor` ;

-- ----------------------------
-- View structure for `vpiosenkauzytkownika`
-- ----------------------------
DROP VIEW IF EXISTS `vpiosenkauzytkownika`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpiosenkauzytkownika` AS select `uzytkownicy`.`ID_uzytkownicy` AS `ID_uzytkownicy`,`uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`utwor`.`nazwa_utworu` AS `ulubiona_piosenka_uzytkownika`,`utwor`.`czas` AS `czas` from (`uzytkownicy` join (`ulubiona_piosenka` join `utwor` on(`ulubiona_piosenka`.`ID_utworu` = `utwor`.`ID_utworu`)) on(`uzytkownicy`.`ID_uzytkownicy` = `ulubiona_piosenka`.`ID_uzytkownicy`)) order by `uzytkownicy`.`ID_uzytkownicy` ;

-- ----------------------------
-- View structure for `vpodzapytanie`
-- ----------------------------
DROP VIEW IF EXISTS `vpodzapytanie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpodzapytanie` AS select `uzytkownicy`.`login` AS `login` from `uzytkownicy` where `uzytkownicy`.`ID_uzytkownicy` in (select `ulubiona_piosenka`.`ID_uzytkownicy` from `ulubiona_piosenka` where `ulubiona_piosenka`.`ID_utworu` in (select `utwor`.`ID_utworu` from `utwor` where `utwor`.`gatunek` = 'rock')) ;

-- ----------------------------
-- View structure for `vpodzapytanie,funkcjamaxx`
-- ----------------------------
DROP VIEW IF EXISTS `vpodzapytanie,funkcjamaxx`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpodzapytanie,funkcjamaxx` AS select `uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`uzytkownicy`.`login` AS `login` from `uzytkownicy` where `uzytkownicy`.`ID_uzytkownicy` = (select max(`uzytkownicy`.`ID_uzytkownicy`) from `uzytkownicy`) ;

-- ----------------------------
-- View structure for `vpseudonim`
-- ----------------------------
DROP VIEW IF EXISTS `vpseudonim`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpseudonim` AS select `osoba`.`ID_osoba` AS `ID_osoba`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`osoba`.`pseudonim` AS `pseudonim`,`osoba`.`plec` AS `plec`,`osoba`.`wiek` AS `wiek` from `osoba` where `osoba`.`pseudonim` <> 'NULL\r\n' ;

-- ----------------------------
-- View structure for `vtoputwor`
-- ----------------------------
DROP VIEW IF EXISTS `vtoputwor`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtoputwor` AS select `y`.`nazwa_utworu` AS `nazwa_utworu`,`y`.`czas` AS `czas`,(select count(0) from `ulubiona_piosenka` `u` where `u`.`ID_utworu` = `y`.`ID_utworu`) AS `ulubiona_piosenka` from `utwor` `y` order by (select count(0) from `ulubiona_piosenka` `u` where `u`.`ID_utworu` = `y`.`ID_utworu`) desc ;

-- ----------------------------
-- View structure for `vulubionyrock`
-- ----------------------------
DROP VIEW IF EXISTS `vulubionyrock`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vulubionyrock` AS select `uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko` from `uzytkownicy` where `uzytkownicy`.`ID_uzytkownicy` in (select `ulubiona_piosenka`.`ID_uzytkownicy` from `ulubiona_piosenka` where `ulubiona_piosenka`.`ID_utworu` in (select `utwor`.`ID_utworu` from `utwor` where `utwor`.`gatunek` = 'rock')) ;

-- ----------------------------
-- View structure for `vwykonawcysolowi`
-- ----------------------------
DROP VIEW IF EXISTS `vwykonawcysolowi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwykonawcysolowi` AS select `osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`wykonawca`.`osoba_zespol` AS `osoba_zespol` from (`wykonawca` join `osoba` on(`wykonawca`.`ID_osoba` = `osoba`.`ID_osoba`)) where `wykonawca`.`osoba_zespol` = 'osoba' ;

-- ----------------------------
-- Procedure structure for `dodaj_uzytkownika`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dodaj_uzytkownika`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodaj_uzytkownika`(vID_uzytkownicy int, vimie varchar(50), vnazwisko varchar(50), vlogin varchar(20), vID_adres int)
BEGIN
	#Routine body goes here...
  if(char_length(vimie)> 0 and char_length(vnazwisko)>0) 
then
insert ignore into uzytkownicy(ID_uzytkownicy, imie, nazwisko, login,ID_adres) values 
(vID_uzytkownicy, vimie, vnazwisko, vlogin, vID_adres);
end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `procedura_z_casem`
-- ----------------------------
DROP PROCEDURE IF EXISTS `procedura_z_casem`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedura_z_casem`(x int )
BEGIN

CASE x > 0
	when 1 then
select liczba_odtworzen > x from utwor;
   else
select 'liczba odwtorzen nie moze byc ujemna';
end case;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `transakcja_procedura`
-- ----------------------------
DROP PROCEDURE IF EXISTS `transakcja_procedura`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transakcja_procedura`(IN vID_uzytkownicy int  , IN vID_utworu int)
BEGIN
set session transaction isolation level read committed;
start transaction;

insert into ulubiona_piosenka (ID_uzytkownicy,ID_utworu) values (vID_uzytkownicy,vID_utworu);
commit;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `usun_uzytkownika`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usun_uzytkownika`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usun_uzytkownika`(IN vlogin varchar(50), OUT vile int)
BEGIN
	#Routine body goes here...
  DELETE FROM uzytkownicy where login = vlogin;

  set vile = ROW_COUNT();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `zlicz`
-- ----------------------------
DROP PROCEDURE IF EXISTS `zlicz`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zlicz`(vnazwisko varchar(50), vile int)
BEGIN
	#Routine body goes here...
  select imie, nazwisko from uzytkownicy where nazwisko =vnazwisko;
  set vile = FOUND_ROWS();
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `piosenki_nagrane_w_przeciagu_roku`
-- ----------------------------
DROP FUNCTION IF EXISTS `piosenki_nagrane_w_przeciagu_roku`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `piosenki_nagrane_w_przeciagu_roku`(vdate date ) RETURNS int(100)
BEGIN
	declare roznica int;
	select count(*) into roznica from utwor where ABS(datediff(vdate,data_nagrania))<366;
	RETURN roznica;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `przelicz_uzytkownikow`
-- ----------------------------
DROP FUNCTION IF EXISTS `przelicz_uzytkownikow`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `przelicz_uzytkownikow`(vnazwisko varchar(80)) RETURNS int(11)
BEGIN
	#Routine body goes here...
	declare ile int;
	select count(*) into ile from uzytkownicy where nazwisko like cocant('%', vnazwisko, '%');
	RETURN ile;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `10_lecie_wydania`
-- ----------------------------
DROP EVENT IF EXISTS `10_lecie_wydania`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `10_lecie_wydania` ON SCHEDULE EVERY 1 HOUR STARTS '2021-01-18 16:21:37' ON COMPLETION NOT PRESERVE ENABLE DO update album set data_wydania = 'Jubileusz 10 lecia wydania albumu' where year(datadiff(data_wydania, now))=10
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `usun_czlonka_zespolu`
-- ----------------------------
DROP EVENT IF EXISTS `usun_czlonka_zespolu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `usun_czlonka_zespolu` ON SCHEDULE EVERY 1 HOUR STARTS '2021-01-12 18:32:32' ON COMPLETION NOT PRESERVE ENABLE DO delete from czlonek_zespołu where year(datadiff(data_odejscia, data_dolaczenia))>100
;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `polscy_uzytkownicy`;
DELIMITER ;;
CREATE TRIGGER `polscy_uzytkownicy` AFTER INSERT ON `adres` FOR EACH ROW begin
if (new.panstwo <> 'Polska') then 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Potral streamingowy dla polskich uzytkownikow.';
end if; 
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `duze_litery`;
DELIMITER ;;
CREATE TRIGGER `duze_litery` BEFORE UPDATE ON `adres` FOR EACH ROW BEGIN
    SET  NEW.panstwo = upper(NEW.panstwo);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `data_nagrania`;
DELIMITER ;;
CREATE TRIGGER `data_nagrania` BEFORE INSERT ON `utwor` FOR EACH ROW trigger2:
begin
if (NEW.data_nagrania > NOW()) then
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'piosenka nie została nagrana';
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `id_zespol`;
DELIMITER ;;
CREATE TRIGGER `id_zespol` BEFORE INSERT ON `zespol` FOR EACH ROW begin
set new.ID_zespolu = nextval(s3);
end
;;
DELIMITER ;
