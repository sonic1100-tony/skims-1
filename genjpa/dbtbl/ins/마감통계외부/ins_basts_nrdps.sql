--
-- Table structure for table `ins_basts_nrdps`
--

DROP TABLE IF EXISTS `ins_basts_nrdps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_basts_nrdps` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `mn_nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주피보험자구분코드',
  `jb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업구분코드',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `smok_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '흡연여부',
  `is_age` decimal(3,0) DEFAULT NULL COMMENT '가입연령',
  `embr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태아여부',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `bth_prdt` date DEFAULT NULL COMMENT '출산예정일자',
  `bthdt` date DEFAULT NULL COMMENT '출산일자',
  `hlprm_is_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건강보험가입형태코드',
  `hlprm_pymps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건강보험납입자관계코드',
  `gr_da_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체자료기준구분코드',
  `stdbd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준체구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기초통계피보험자';
