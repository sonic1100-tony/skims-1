--
-- Table structure for table `lse_crdis_rlpmi_intn_inq_tlm`
--

DROP TABLE IF EXISTS `lse_crdis_rlpmi_intn_inq_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_crdis_rlpmi_intn_inq_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `intn_tlmcd` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '대외전문코드',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `inq_stdt` date NOT NULL COMMENT '조회기준일자',
  `psn_info_utagr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보활용동의여부',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_crdis_rlpmi_intn_inq_tlm_00` (`intn_tlmcd`,`nrdps_ctmno`,`inq_stdt`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원실손대외조회전문';
