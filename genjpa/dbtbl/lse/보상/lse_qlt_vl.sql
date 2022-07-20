--
-- Table structure for table `lse_qlt_vl`
--

DROP TABLE IF EXISTS `lse_qlt_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_qlt_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `vl_seqno` decimal(5,0) NOT NULL COMMENT '평가순번',
  `vl_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가항목명',
  `vl_it_pdtb` decimal(12,6) DEFAULT NULL COMMENT '평가항목배점',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `tmnd_vl_poct` decimal(5,0) DEFAULT NULL COMMENT '팀장평가점수',
  `no1_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번항목명',
  `no1_poct` decimal(3,0) DEFAULT NULL COMMENT '1번점수',
  `no1_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번가감부호',
  `no1_tmnd_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번팀장가감부호',
  `no2_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번항목명',
  `no2_poct` decimal(3,0) DEFAULT NULL COMMENT '2번점수',
  `no2_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번가감부호',
  `no2_tmnd_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번팀장가감부호',
  `no3_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번항목명',
  `no3_poct` decimal(3,0) DEFAULT NULL COMMENT '3번점수',
  `no3_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번가감부호',
  `no3_tmnd_ads_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번팀장가감부호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_qlt_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`vl_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품질평가';
