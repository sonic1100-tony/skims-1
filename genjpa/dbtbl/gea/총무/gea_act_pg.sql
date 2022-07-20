--
-- Table structure for table `gea_act_pg`
--

DROP TABLE IF EXISTS `gea_act_pg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_act_pg` (
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `pgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '프로그램코드',
  `act_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '활동분류코드',
  `cnn_gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관련단체고객번호',
  `pg_shtnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '프로그램단축명',
  `pg_spc` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '프로그램내역',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `pg_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '프로그램분류코드',
  `asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배정금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yr`,`orgn_orgcd`,`pgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='활동프로그램';
