--
-- Table structure for table `ins_cr_cvr_ad`
--

DROP TABLE IF EXISTS `ins_cr_cvr_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cvr_ad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime DEFAULT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime DEFAULT NULL COMMENT '배서승인종료일시',
  `t1s_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '1회차위험보험료',
  `t13s_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '13회차위험보험료',
  `t25s_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '25회차위험보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_cvr_ad_00` (`plyno`,`cvrcd`,`cvr_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약담보부가';
