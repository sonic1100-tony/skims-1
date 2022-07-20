--
-- Table structure for table `cus_fatca_tx_ntn`
--

DROP TABLE IF EXISTS `cus_fatca_tx_ntn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fatca_tx_ntn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `rl_ruler_seqno` decimal(5,0) NOT NULL COMMENT '실제지배자순번',
  `tx_ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조세국가코드',
  `pytx_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납세등록번호',
  `pytx_no_nwrte_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납세번호미기재사유코드',
  `pytx_no_nwrte_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납세번호미기재사유',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fatca_tx_ntn_00` (`ctmno`,`crr_seqno`,`rl_ruler_seqno`,`tx_ntncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FATCA조세국가';
