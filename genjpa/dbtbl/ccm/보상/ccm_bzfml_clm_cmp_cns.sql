--
-- Table structure for table `ccm_bzfml_clm_cmp_cns`
--

DROP TABLE IF EXISTS `ccm_bzfml_clm_cmp_cns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bzfml_clm_cmp_cns` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `cns_seqno` decimal(5,0) NOT NULL COMMENT '상담순번',
  `bzfml_cns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영업가족상담유형코드',
  `cns_rq_dthms` datetime NOT NULL COMMENT '상담신청일시',
  `cns_rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '상담신청직원번호',
  `cns_rq_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '상담신청내용',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자확인여부',
  `mng_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치사항',
  `mng_dthms` datetime DEFAULT NULL COMMENT '조치일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_bzfml_clm_cmp_cns_00` (`rcp_yymm`,`rcp_nv_seqno`,`cns_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족사고보상상담';
