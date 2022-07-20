--
-- Table structure for table `cus_en_chrct_wlst`
--

DROP TABLE IF EXISTS `cus_en_chrct_wlst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_en_chrct_wlst` (
  `wlst_no` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT 'WATCHLIST번호',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `ntl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인법인구분코드',
  `rgfrg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내외국인구분코드',
  `wlst_sorc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST출처코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자직원번호',
  `cncdt` date NOT NULL DEFAULT '9999-12-31' COMMENT '해제일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wlst_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='요주의인물WATCH LIST';
