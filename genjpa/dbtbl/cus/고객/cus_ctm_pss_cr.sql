--
-- Table structure for table `cus_ctm_pss_cr`
--

DROP TABLE IF EXISTS `cus_ctm_pss_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_pss_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `pss_cr_ins_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가망계약보험종류코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입여부',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종코드',
  `apldt` date DEFAULT NULL COMMENT '청약일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `cvr_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보내용',
  `cr_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약내용',
  `pss_cr_da_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가망계약자료유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_pss_cr_00` (`stfno`,`bz_fml_ctm_seqno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객가망계약';
