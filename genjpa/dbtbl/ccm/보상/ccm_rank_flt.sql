--
-- Table structure for table `ccm_rank_flt`
--

DROP TABLE IF EXISTS `ccm_rank_flt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rank_flt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `flt_seqno` decimal(3,0) NOT NULL COMMENT '과실순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `flt_sucs_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '과실승계여부',
  `flt_dcn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '과실확정여부',
  `dcn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '확정과실율',
  `flt_ap_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실적용내용',
  `flt_ch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실변경사유코드',
  `rcp_nv_flt_seqno` decimal(3,0) DEFAULT NULL COMMENT '접수조사과실순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rank_flt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`flt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서열별과실';
