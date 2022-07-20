--
-- Table structure for table `ccm_fds_alarm_rst`
--

DROP TABLE IF EXISTS `ccm_fds_alarm_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fds_alarm_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nlisr_asso_inq_ctmno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손보협회조회고객번호',
  `grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급코드',
  `grcnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급코드명',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `fds_snro_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS시나리오설명',
  `wrk_dthms` datetime DEFAULT NULL COMMENT '작업일시',
  `bj_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상제외여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FDS알람결과';
