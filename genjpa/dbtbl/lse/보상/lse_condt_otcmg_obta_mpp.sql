--
-- Table structure for table `lse_condt_otcmg_obta_mpp`
--

DROP TABLE IF EXISTS `lse_condt_otcmg_obta_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_condt_otcmg_obta_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `obta_mpp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입수매핑구분코드',
  `st_atrvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기준속성값',
  `ap_str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용시작년월',
  `ap_nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용종료년월',
  `mpp_atrvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매핑속성값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_condt_otcmg_obta_mpp_00` (`obta_mpp_flgcd`,`st_atrvl`,`ap_str_yymm`,`ap_nd_yymm`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수타사간사입수매핑';
