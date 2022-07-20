--
-- Table structure for table `lse_cr_pout_mtt`
--

DROP TABLE IF EXISTS `lse_cr_pout_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cr_pout_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `pout_mtt_seqno` decimal(5,0) NOT NULL COMMENT '특이사항순번',
  `cr_pout_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약특이사항구분코드',
  `cr_pout_mtt_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약특이사항세부코드',
  `cvap_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원유형코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cr_pout_mtt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`pout_mtt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약특이사항';
