--
-- Table structure for table `aud_adt_info_rcp_cr_dt`
--

DROP TABLE IF EXISTS `aud_adt_info_rcp_cr_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_info_rcp_cr_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사업무식별코드',
  `cr_dt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_adt_info_rcp_cr_dt_00` (`rcpdt`,`rcp_hhmm`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사정보접수발생상세';
