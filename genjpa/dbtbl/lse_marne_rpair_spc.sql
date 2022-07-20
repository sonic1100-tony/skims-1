--
-- Table structure for table `lse_marne_rpair_spc`
--

DROP TABLE IF EXISTS `lse_marne_rpair_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_marne_rpair_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `marne_rpair_seqno` decimal(3,0) NOT NULL COMMENT '해상수리순번',
  `rpair_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리업체명',
  `rpair_sp_spc` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리공급내역',
  `rpair_strdt` date DEFAULT NULL COMMENT '수리시작일자',
  `rpair_nddt` date DEFAULT NULL COMMENT '수리종료일자',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `et_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_marne_rpair_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`marne_rpair_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해상수리내역';
