--
-- Table structure for table `cus_ctm_info_us_log`
--

DROP TABLE IF EXISTS `cus_ctm_info_us_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_info_us_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ctm_info_us_dthms` datetime NOT NULL COMMENT '고객정보사용일시',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `cno_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접속방법코드',
  `ctm_info_us_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보사용내용코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_cus_ctm_info_us_log_00` (`ctmno`,`stfno`,`ctm_info_us_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=157223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보사용로그';
