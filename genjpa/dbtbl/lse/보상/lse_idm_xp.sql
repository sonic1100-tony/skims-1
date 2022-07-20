--
-- Table structure for table `lse_idm_xp`
--

DROP TABLE IF EXISTS `lse_idm_xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_idm_xp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_xp_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '구상예상관리번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `idm_cr_prs_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상발생대표유형코드',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `dher_xp_fltrt` decimal(12,6) DEFAULT NULL COMMENT '취급자예상과실율',
  `ex_pramt` decimal(15,0) DEFAULT NULL COMMENT '환입예정금액',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `idm_xp_chrps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상예상담당자구분코드',
  `idm_xp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상예상담당자직원번호',
  `xp_rgtdt` date DEFAULT NULL COMMENT '예상등록일자',
  `idm_xp_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상예상취소여부',
  `idm_xp_ccl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상예상취소사유코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_idm_xp_00` (`idm_xp_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상예상';
