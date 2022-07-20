--
-- Table structure for table `ins_inr_gir_ss`
--

DROP TABLE IF EXISTS `ins_inr_gir_ss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inr_gir_ss` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_inqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '고객조회번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `pty_rtn_prm` decimal(15,0) DEFAULT NULL COMMENT '추징환급보험료',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `gir_rv_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지로수납처리결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_inr_gir_ss_00` (`ctm_inqno`,`plyno`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합지로발행';
