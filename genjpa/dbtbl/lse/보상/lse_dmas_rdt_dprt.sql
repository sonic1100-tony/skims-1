--
-- Table structure for table `lse_dmas_rdt_dprt`
--

DROP TABLE IF EXISTS `lse_dmas_rdt_dprt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dmas_rdt_dprt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명',
  `titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제목',
  `ad_bdg_yyct` decimal(5,0) DEFAULT NULL COMMENT '추가예산년수',
  `psyr_rdt_dprt` decimal(15,7) DEFAULT NULL COMMENT '경년감가상각율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dmas_rdt_dprt_00` (`chrps_stfno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정감가상각율';
