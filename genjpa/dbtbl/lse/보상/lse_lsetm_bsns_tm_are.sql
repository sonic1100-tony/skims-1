--
-- Table structure for table `lse_lsetm_bsns_tm_are`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_tm_are`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_tm_are` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `adr_seqno` decimal(10,0) NOT NULL COMMENT '주소순번',
  `sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '읍면동',
  `dv_str_amt` decimal(17,2) DEFAULT NULL COMMENT '배당시작금액',
  `dv_nd_amt` decimal(17,2) DEFAULT NULL COMMENT '배당종료금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_tm_are_00` (`tm_orgcd`,`adr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무팀지역';
