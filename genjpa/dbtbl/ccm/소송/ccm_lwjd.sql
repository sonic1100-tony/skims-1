--
-- Table structure for table `ccm_lwjd`
--

DROP TABLE IF EXISTS `ccm_lwjd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lwjd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lwjd` decimal(2,0) NOT NULL COMMENT '심급',
  `smamt_lw_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '소액소송여부',
  `thcp_agnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사대리인구분코드',
  `thcps_agnt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사측대리인고객번호',
  `thcps_agnt_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '당사측대리인협력업체순번',
  `thcp_agnt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사대리인직원번호',
  `plat_agnt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고대리인고객번호',
  `plat_agnt_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '원고대리인협력업체순번',
  `plat_agtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고대리인명',
  `deft_agnt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피고대리인고객번호',
  `deft_agnt_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '피고대리인협력업체순번',
  `deft_agtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피고대리인명',
  `acdno_crtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호법원코드',
  `acdno_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호접수년도',
  `acdno_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호분류코드',
  `acdno_seqno` decimal(7,0) NOT NULL COMMENT '사건번호순번',
  `acdno_crtcd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호법원코드2',
  `acdno_rcp_yr_2` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호접수년도2',
  `acdno_csfcd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호분류코드2',
  `acdno_seqno_2` decimal(7,0) DEFAULT NULL COMMENT '사건번호순번2',
  `csut_acdno_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반소사건번호법원코드',
  `csut_acdno_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반소사건번호접수년도',
  `csut_acdno_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반소사건번호분류코드',
  `csut_acdno_seqno` decimal(7,0) DEFAULT NULL COMMENT '반소사건번호순번',
  `lw_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송종류코드',
  `dm_lwamt` decimal(15,0) DEFAULT NULL COMMENT '청구소송가액',
  `ppedt` date DEFAULT NULL COMMENT '상소일자',
  `aplnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상소인구분코드',
  `apl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상소사유코드',
  `frc_xcst_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제집행정지신청유무',
  `frc_xc_rq_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제집행신청결과코드',
  `lwjd_wsurt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '심급승소율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lwjd_00` (`lw_rcp_yr`,`lw_sno`,`lwjd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심급';
