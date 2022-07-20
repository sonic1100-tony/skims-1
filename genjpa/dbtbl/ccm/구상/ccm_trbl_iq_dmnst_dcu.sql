--
-- Table structure for table `ccm_trbl_iq_dmnst_dcu`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_dmnst_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_dmnst_dcu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `is_seqno` decimal(5,0) NOT NULL COMMENT '발급순번',
  `is_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발급문서구분코드',
  `is_dcu_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '발급문서순번',
  `dcuno` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '문서번호',
  `dcu_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_dmnst_dcu_00` (`rcp_yymm`,`rcp_nv_seqno`,`is_seqno`,`is_dcu_flgcd`,`is_dcu_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의입증문서';
