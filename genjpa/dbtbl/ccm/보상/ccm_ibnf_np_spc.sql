--
-- Table structure for table `ccm_ibnf_np_spc`
--

DROP TABLE IF EXISTS `ccm_ibnf_np_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ibnf_np_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '지급결의번호',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `np_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미지급사유코드',
  `np_et_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미지급기타사유',
  `np_rs_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미지급사유안내여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ibnf_np_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`py_rslt_no`,`as_it_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금미지급내역';
