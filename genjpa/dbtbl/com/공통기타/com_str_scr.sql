--
-- Table structure for table `com_str_scr`
--

DROP TABLE IF EXISTS `com_str_scr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_str_scr` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '채널시스템구분코드',
  `scr_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '화면ID',
  `scr_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면설명',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`chn_sys_flgcd`,`scr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시작화면';
