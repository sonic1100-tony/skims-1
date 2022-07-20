--
-- Table structure for table `ccm_dm_rd_rptg_nv_cnbd`
--

DROP TABLE IF EXISTS `ccm_dm_rd_rptg_nv_cnbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_rd_rptg_nv_cnbd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `dm_rd_rptg_seqno` decimal(3,0) NOT NULL COMMENT '손해감소보고서순번',
  `cnbd_seqno` decimal(3,0) NOT NULL COMMENT '기여도순번',
  `chrps_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자업무구분코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `cnbd` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '기여도',
  `ad_cnbr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가기여자여부',
  `dm_rd_vl_poct` decimal(7,2) DEFAULT NULL COMMENT '손해감소평가점수',
  `mn_mg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주간사여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_rd_rptg_nv_cnbd_00` (`rcp_yymm`,`rcp_nv_seqno`,`ins_imcd`,`dm_rd_rptg_seqno`,`cnbd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해감소보고서조사기여도';
