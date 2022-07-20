--
-- Table structure for table `lse_ce_relpc_spqu_crst`
--

DROP TABLE IF EXISTS `lse_ce_relpc_spqu_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ce_relpc_spqu_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객주민번호',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '모집자주민번호',
  `t_dmgrt` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '총손해율',
  `ddalw_dmgrt` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '일당손해율',
  `dascs_dmgrt` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '진단비손해율',
  `mdcs_dmgrt` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '의료비손해율',
  `cuty_t_dmgrt` decimal(12,2) NOT NULL COMMENT '당해총손해율',
  `cuty_ddalw_dmgrt` decimal(12,2) NOT NULL COMMENT '당해일당손해율',
  `cuty_dascs_dmgrt` decimal(12,2) NOT NULL COMMENT '당해진단비손해율',
  `cuty_mdcs_dmgrt` decimal(12,2) NOT NULL COMMENT '당해의료비손해율',
  `spc_adm_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '특별관리대상여부',
  `bz_spc_adm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '영업특별관리여부',
  `hsp_absc_crr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '입원부재경력여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ce_relpc_spqu_crst_00` (`ctm_rsno`,`cer_rsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모집관계자특성현황';
