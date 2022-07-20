--
-- Table structure for table `lse_hprm_rptg_adx_dcu`
--

DROP TABLE IF EXISTS `lse_hprm_rptg_adx_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_rptg_adx_dcu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `adx_dcu_seqno` decimal(5,0) NOT NULL COMMENT '첨부문서순번',
  `adx_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부문서유형코드',
  `adx_dcu_is_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부문서발급기관명',
  `adx_dcu_pag_num` decimal(3,0) DEFAULT NULL COMMENT '첨부문서페이지수',
  `adx_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_rptg_adx_dcu_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`adx_dcu_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM보고서첨부문서';
