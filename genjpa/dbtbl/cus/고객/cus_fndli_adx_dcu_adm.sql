--
-- Table structure for table `cus_fndli_adx_dcu_adm`
--

DROP TABLE IF EXISTS `cus_fndli_adx_dcu_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndli_adx_dcu_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_sno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '접수일련번호',
  `adx_dcu_seqno` decimal(5,0) NOT NULL COMMENT '첨부문서순번',
  `adx_dcunm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부문서명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fndli_adx_dcu_adm_00` (`rcp_sno`,`adx_dcu_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융거래정보첨부문서관리';
