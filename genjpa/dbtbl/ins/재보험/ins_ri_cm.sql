--
-- Table structure for table `ins_ri_cm`
--

DROP TABLE IF EXISTS `ins_ri_cm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ri_cm` (
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `re_pftcm_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '출재이익수수료구분코드',
  `crtm` decimal(3,0) NOT NULL COMMENT '계약기간',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종여부',
  `cmrt` decimal(12,6) NOT NULL COMMENT '수수료율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`crano`,`re_pftcm_flgcd`,`crtm`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험수수료';
