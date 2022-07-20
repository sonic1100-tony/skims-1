--
-- Table structure for table `lse_hamt_clmrp`
--

DROP TABLE IF EXISTS `lse_hamt_clmrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hamt_clmrp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `inp_seq` decimal(3,0) NOT NULL COMMENT '입력회차',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `hamt_rpt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액보고구분코드',
  `hamt_clmrp_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액사고보고내용',
  `rptg_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고서내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hamt_clmrp_00` (`rcp_yymm`,`rcp_nv_seqno`,`inp_seq`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고액사고보고';
