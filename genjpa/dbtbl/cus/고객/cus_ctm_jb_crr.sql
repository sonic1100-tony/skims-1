--
-- Table structure for table `cus_ctm_jb_crr`
--

DROP TABLE IF EXISTS `cus_ctm_jb_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_jb_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `jb_ch_seqno` decimal(5,0) NOT NULL COMMENT '직업변경순번',
  `jbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업코드',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경처리번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_jb_crr_00` (`ctmno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=1457 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객직업이력';
