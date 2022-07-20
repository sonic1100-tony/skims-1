--
-- Table structure for table `cus_fatca_ctm_cnf_mtt`
--

DROP TABLE IF EXISTS `cus_fatca_ctm_cnf_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fatca_ctm_cnf_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성값',
  `atr_ad_vl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성추가값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fatca_ctm_cnf_mtt_00` (`ctmno`,`crr_seqno`,`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FATCA고객확인사항';
