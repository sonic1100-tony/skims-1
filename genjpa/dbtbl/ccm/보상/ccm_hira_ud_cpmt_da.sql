--
-- Table structure for table `ccm_hira_ud_cpmt_da`
--

DROP TABLE IF EXISTS `ccm_hira_ud_cpmt_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_ud_cpmt_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원배당구분코드',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `thcp_dv_dt` date NOT NULL COMMENT '당사배당일자',
  `chkdt` date DEFAULT NULL COMMENT '점검일자',
  `hira_cpmt_da_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원보완자료유형코드',
  `cpmt_imgno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보완이미지번호',
  `rcp_nv_crr_seqno` decimal(3,0) DEFAULT NULL COMMENT '접수조사이력순번',
  `trs_dcuno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신문서번호',
  `adx_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_ud_cpmt_da_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_dv_flgcd`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원심사보완자료';
