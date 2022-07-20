--
-- Table structure for table `ccm_chrps_ch_crr`
--

DROP TABLE IF EXISTS `ccm_chrps_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_chrps_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `chrps_ch_crr_seqno` decimal(5,0) NOT NULL COMMENT '담당자변경이력순번',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자기관코드',
  `chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자팀기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `dv_dthms` datetime NOT NULL COMMENT '배당일시',
  `dv_ap_nd_dthms` datetime NOT NULL COMMENT '배당적용종료일시',
  `dv_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당확인구분코드',
  `dv_cnfm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당확인자직원번호',
  `dv_cnf_dthms` datetime DEFAULT NULL COMMENT '배당확인일시',
  `chrps_ch_rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '담당자변경요청순번',
  `idm_wrsps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상전담제여부',
  `cmp_ky_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키구분코드',
  `itg1_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1보전구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_chrps_ch_crr_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`chrps_ch_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담당자변경이력';
