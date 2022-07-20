--
-- Table structure for table `ccm_tz_cnc_adm`
--

DROP TABLE IF EXISTS `ccm_tz_cnc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_tz_cnc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `tz_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '가압류주민번호',
  `tz_seqno` decimal(10,0) NOT NULL COMMENT '가압류순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `tz_cncdt` date DEFAULT NULL COMMENT '가압류해제일자',
  `tz_cncps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류해제자직원번호',
  `tz_cnc_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류해제사유',
  `tz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_tz_cnc_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`tz_rsno`,`tz_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가압류해제관리';
