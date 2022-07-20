--
-- Table structure for table `ins_cr_ltrm_cvr`
--

DROP TABLE IF EXISTS `ins_cr_ltrm_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ltrm_cvr` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `sustd_rt_key_assmb_cd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준하체요율KEY조립코드',
  `hlt_age_ap_bf_prm` decimal(17,2) DEFAULT NULL COMMENT '건강연령적용전보험료',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`cvrcd`,`cvr_seqno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약장기담보';
