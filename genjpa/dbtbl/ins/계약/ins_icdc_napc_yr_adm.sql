--
-- Table structure for table `ins_icdc_napc_yr_adm`
--

DROP TABLE IF EXISTS `ins_icdc_napc_yr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_icdc_napc_yr_adm` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `icdc_napc_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소득공제미적용년도',
  `icdc_napc_yr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득공제미적용년도상태코드',
  `icdc_napc_prm` decimal(15,0) DEFAULT NULL COMMENT '소득공제미적용보험료',
  `icdc_cnfpl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득공제확인처구분코드',
  `cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사명',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사증권번호',
  `nlxsv_icdc_apprm` decimal(15,0) DEFAULT NULL COMMENT '국세청소득공제적용보험료',
  `ot_cr_icdc_apprm` decimal(15,0) DEFAULT NULL COMMENT '타계약소득공제적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`ap_nddt`,`ap_strdt`,`ndsno`,`nds_ap_str_dthms`,`nds_ap_nd_dthms`,`icdc_napc_yr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소득공제미적용년도관리';
