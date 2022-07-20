--
-- Table structure for table `lse_clm_dm_clmps_cr`
--

DROP TABLE IF EXISTS `lse_clm_dm_clmps_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_dm_clmps_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `imu_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '면책여부',
  `end_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '종결여부',
  `frc_ad_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제추가여부',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정여부',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `rcp_ccldt` date DEFAULT NULL COMMENT '접수취소일자',
  `rcp_ccl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수취소사유코드',
  `rcp_ccl_note` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수취소비고',
  `rcp_ccl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수취소직원번호',
  `ad_dm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가청구여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_dm_clmps_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`plyno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=5881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고청구사고자계약';
