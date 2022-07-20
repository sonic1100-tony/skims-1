--
-- Table structure for table `ccm_fds_alarm_adm`
--

DROP TABLE IF EXISTS `ccm_fds_alarm_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fds_alarm_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급코드',
  `xcpt_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제외대상여부',
  `nbj_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비대상사유',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FDS알람관리';
