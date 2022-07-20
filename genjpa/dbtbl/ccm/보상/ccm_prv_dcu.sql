--
-- Table structure for table `ccm_prv_dcu`
--

DROP TABLE IF EXISTS `ccm_prv_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prv_dcu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prv_dcu_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '결재문서년도',
  `prv_dcu_seqno` decimal(10,0) NOT NULL COMMENT '결재문서순번',
  `prv_dcu_unt_ordr` decimal(10,0) NOT NULL COMMENT '결재문서단위순차',
  `prv_bsns_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무종류코드',
  `prv_bsns_dt_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재업무상세종류코드',
  `prv_rq_dthms` datetime NOT NULL COMMENT '결재요청일시',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태코드',
  `fnl_prv_lvl` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '최종결재레벨',
  `crnt_prvmn_lvl` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현결재자레벨',
  `drct_asmt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '직접지정여부',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `chrps_ch_rq_seqno` decimal(5,0) NOT NULL COMMENT '담당자변경요청순번',
  `prv_rq_seqno` decimal(5,0) NOT NULL COMMENT '결재요청순번',
  `otcm_mg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사간사여부',
  `wrkfl_rltno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '워크플로우연계번호',
  `migky` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MIGKEY',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prv_dcu_00` (`prv_dcu_yr`,`prv_dcu_seqno`,`prv_dcu_unt_ordr`),
  KEY `idx_ccm_prv_dcu_10` (`cmp_ky_yr`,`cmp_ky_seqno`),
  KEY `idx_ccm_prv_dcu_11` (`stfno`,`prv_rq_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=1816 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재문서';
