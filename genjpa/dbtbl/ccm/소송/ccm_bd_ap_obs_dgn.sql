--
-- Table structure for table `ccm_bd_ap_obs_dgn`
--

DROP TABLE IF EXISTS `ccm_bd_ap_obs_dgn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bd_ap_obs_dgn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `bd_ap_sbjcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신체감정과목코드',
  `obs_dgn_seqno` decimal(5,0) NOT NULL COMMENT '장해진단순번',
  `dgn_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단부위코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dgn_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단업무구분코드',
  `obs_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해적용구분코드',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목코드',
  `obs_itnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목명',
  `jb_cfc` decimal(1,0) DEFAULT NULL COMMENT '직업계수',
  `clm_cnbrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '사고기여율',
  `apprr` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '준용율',
  `sfdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만족도코드',
  `amvt_ever_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한시영구구분코드',
  `obs_strdt` date DEFAULT NULL COMMENT '장해시작일자',
  `obs_nddt` date DEFAULT NULL COMMENT '장해종료일자',
  `obs_yyct` decimal(3,0) NOT NULL COMMENT '장해년수',
  `obs_mc` decimal(3,0) NOT NULL COMMENT '장해월수',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `pyrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '지급율',
  `merg_obs_cal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병합장해계산여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_bd_ap_obs_dgn_00` (`lw_prg_sno`,`bd_ap_sbjcd`,`obs_dgn_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신체감정장해진단';
