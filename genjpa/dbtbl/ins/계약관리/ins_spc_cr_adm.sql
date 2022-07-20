--
-- Table structure for table `ins_spc_cr_adm`
--

DROP TABLE IF EXISTS `ins_spc_cr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_spc_cr_adm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `inq_av_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회가능구분코드',
  `nds_av_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서가능구분코드',
  `cn_av_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지가능구분코드',
  `ln_av_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출가능구분코드',
  `lsetm_av_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사가능구분코드',
  `dp_ctl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금통제구분코드',
  `inp_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력사유',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_spc_cr_adm_00` (`plyno`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별계약관리';
