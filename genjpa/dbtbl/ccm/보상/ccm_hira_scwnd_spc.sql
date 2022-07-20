--
-- Table structure for table `ccm_hira_scwnd_spc`
--

DROP TABLE IF EXISTS `ccm_hira_scwnd_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_scwnd_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `scwnd_spc_seqno` decimal(2,0) NOT NULL COMMENT '상병내역순번',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `hira_scwnd_csf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원상병분류구분코드',
  `scwnd_csf_symb` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병분류기호',
  `scwnd_csf_symb_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병분류기호명',
  `hira_trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료과목코드',
  `hira_inmed_dt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원내과세부과목코드',
  `vshs_dt` date DEFAULT NULL COMMENT '내원일자',
  `cm_trmt_opndt` date DEFAULT NULL COMMENT '당월진료개시일자',
  `rgtup_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우상치식구분코드',
  `lftup_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌상치식구분코드',
  `rgtdn_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우하치식구분코드',
  `lftdn_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌하치식구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_scwnd_spc_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`scwnd_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원상병내역';
