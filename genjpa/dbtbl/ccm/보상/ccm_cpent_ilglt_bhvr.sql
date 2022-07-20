--
-- Table structure for table `ccm_cpent_ilglt_bhvr`
--

DROP TABLE IF EXISTS `ccm_cpent_ilglt_bhvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cpent_ilglt_bhvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prnt_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수년월',
  `prnt_rcp_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수순번',
  `ins_crme_dm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험범죄청구유형코드',
  `ins_crme_ilglt_bhvcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험범죄불법행위코드',
  `ilglt_dmnst_da_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '불법입증자료유무',
  `dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cpent_ilglt_bhvr_00` (`prnt_rcp_yymm`,`prnt_rcp_seqno`,`ins_crme_dm_tpcd`,`ins_crme_ilglt_bhvcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체불법행위';
