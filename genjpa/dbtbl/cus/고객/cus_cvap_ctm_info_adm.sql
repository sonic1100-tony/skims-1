--
-- Table structure for table `cus_cvap_ctm_info_adm`
--

DROP TABLE IF EXISTS `cus_cvap_ctm_info_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cvap_ctm_info_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `cnn_db_1_flg_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련DB1구분값',
  `cnn_db_2_flg_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련DB2구분값',
  `cnn_db_3_flg_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련DB3구분값',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `ers_dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제처리자직원번호',
  `ctm_info_ers_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보삭제사유구분코드',
  `ctm_info_ers_rs_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보삭제사유내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cvap_ctm_info_adm_00` (`rsno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원고객정보관리';
