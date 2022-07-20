--
-- Table structure for table `lse_hprm_pend_adm`
--

DROP TABLE IF EXISTS `lse_hprm_pend_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_pend_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `requ_org_seqno` decimal(3,0) NOT NULL COMMENT '의뢰기관순번',
  `pend_seqno` decimal(3,0) NOT NULL COMMENT '미결순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `pend_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미결사유코드',
  `dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_pend_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`requ_org_seqno`,`pend_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM미결관리';
