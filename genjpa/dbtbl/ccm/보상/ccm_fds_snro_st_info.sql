--
-- Table structure for table `ccm_fds_snro_st_info`
--

DROP TABLE IF EXISTS `ccm_fds_snro_st_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fds_snro_st_info` (
  `fds_snro_id` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'FDS시나리오ID',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `fds_snro_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS시나리오명',
  `fds_snro_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS시나리오설명',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `fds_snro_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS시나리오구분코드',
  `fds_snro_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS시나리오대상코드',
  `fds_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS기간구분코드',
  `alarm_fds_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알람FDS기간구분코드',
  `vl_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가항목명',
  `rst_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과항목명',
  `dnmt_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분모항목명',
  `numr_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분자항목명',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fds_snro_id`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FDS시나리오기준정보';
