--
-- Table structure for table `ccm_trm_los_amt`
--

DROP TABLE IF EXISTS `ccm_trm_los_amt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trm_los_amt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `trm_los_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기간상실구분코드',
  `trm_los_seqno` decimal(2,0) NOT NULL COMMENT '기간상실순번',
  `trm_los_ccamt` decimal(15,0) NOT NULL COMMENT '기간상실산출금액',
  `appr_trm_st` date NOT NULL COMMENT '인정기간시기',
  `appr_trm_clstr` date NOT NULL COMMENT '인정기간종기',
  `dy1_unprc` decimal(15,0) NOT NULL COMMENT '1일단가',
  `t_appr_trm_mc` decimal(5,0) NOT NULL COMMENT '총인정기간월수',
  `t_appr_trm_cfc` decimal(13,10) NOT NULL COMMENT '총인정기간계수',
  `befo_appr_trm_mc` decimal(5,0) NOT NULL COMMENT '이전인정기간월수',
  `befo_appr_trm_cfc` decimal(13,10) NOT NULL COMMENT '이전인정기간계수',
  `ap_cfc` decimal(13,10) NOT NULL COMMENT '적용계수',
  `mnth_nsamt` decimal(15,0) DEFAULT NULL COMMENT '월개호비',
  `nspct` decimal(2,0) DEFAULT NULL COMMENT '개호인수',
  `mnth_actvt_days` decimal(5,0) DEFAULT NULL COMMENT '월가동일수',
  `appr_mnth_icamt` decimal(15,0) DEFAULT NULL COMMENT '인정월소득금액',
  `livg_rt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생계비율구분코드',
  `lbr_blt_losrt` decimal(5,2) DEFAULT NULL COMMENT '노동능력상실율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trm_los_amt_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`trm_los_flgcd`,`trm_los_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기간상실금액';
