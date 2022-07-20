--
-- Table structure for table `ccm_lse_sep_keep`
--

DROP TABLE IF EXISTS `ccm_lse_sep_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_sep_keep` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ds_dthms` datetime DEFAULT NULL COMMENT '결정일시',
  `rpt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고구분코드',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `imu_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책여부',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정여부',
  `idm_cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상담보상태코드',
  `lw_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lse_sep_keep_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`wrkdt`,`ikd_grpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상손사분리보관';
