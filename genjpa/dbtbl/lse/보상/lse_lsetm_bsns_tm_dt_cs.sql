--
-- Table structure for table `lse_lsetm_bsns_tm_dt_cs`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_tm_dt_cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_tm_dt_cs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비용구분코드',
  `clm_nv_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사종류코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `dt_cs_seqno` decimal(3,0) NOT NULL COMMENT '세부비용순번',
  `cs_clc_str_amt` decimal(15,0) NOT NULL COMMENT '비용산정시작금액',
  `cs_clc_nd_amt` decimal(15,0) NOT NULL COMMENT '비용산정종료금액',
  `cs_amt` decimal(17,2) NOT NULL COMMENT '비용금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_tm_dt_cs_00` (`tm_orgcd`,`ikd_grpcd`,`cs_flgcd`,`clm_nv_kndcd`,`ap_str_dthms`,`dt_cs_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무팀세부비용';
