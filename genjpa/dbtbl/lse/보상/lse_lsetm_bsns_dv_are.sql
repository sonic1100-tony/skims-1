--
-- Table structure for table `lse_lsetm_bsns_dv_are`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_dv_are`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_dv_are` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고유형코드',
  `clm_2_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고2유형코드',
  `adr_seqno` decimal(10,0) NOT NULL COMMENT '주소순번',
  `sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '읍면동',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_dv_are_00` (`stfno`,`ikd_grpcd`,`ins_imcd`,`clm_tpcd`,`clm_2_tpcd`,`adr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무배당지역';
