--
-- Table structure for table `cus_bdl_ctm_ta`
--

DROP TABLE IF EXISTS `cus_bdl_ctm_ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bdl_ctm_ta` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ta_crno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '이관발생번호',
  `bz_fmlcu_cr_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객발생순번',
  `ta_st_dthms` datetime NOT NULL COMMENT '이관기준일시',
  `ta_rqdt` date DEFAULT NULL COMMENT '이관신청일자',
  `ta_dldt` date DEFAULT NULL COMMENT '이관처리일자',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전취급직원번호',
  `taaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후취급직원번호',
  `dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리상태코드',
  `ta_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관구분코드',
  `ta_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bdl_ctm_ta_00` (`ta_crno`,`bz_fmlcu_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄고객이관';
