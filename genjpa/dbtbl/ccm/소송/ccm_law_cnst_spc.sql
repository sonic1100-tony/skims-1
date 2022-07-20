--
-- Table structure for table `ccm_law_cnst_spc`
--

DROP TABLE IF EXISTS `ccm_law_cnst_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_law_cnst_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `law_cnst_rgt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '법률자문등록년도',
  `law_cnst_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '법률자문순번',
  `law_cnst_spc_seqno` decimal(3,0) NOT NULL COMMENT '법률자문내역순번',
  `law_cnspl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법률자문처구분코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `cnscs_pydt` date DEFAULT NULL COMMENT '자문비지급일자',
  `cnscs_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자문비지급금액',
  `law_cnst_asrdt` date DEFAULT NULL COMMENT '법률자문회신일자',
  `law_cnst_asr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법률자문회신내용',
  `cnst_lwrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문변호사명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_law_cnst_spc_00` (`law_cnst_rgt_yr`,`law_cnst_seqno`,`law_cnst_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법률자문내역';
