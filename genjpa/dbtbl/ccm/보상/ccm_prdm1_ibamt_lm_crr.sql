--
-- Table structure for table `ccm_prdm1_ibamt_lm_crr`
--

DROP TABLE IF EXISTS `ccm_prdm1_ibamt_lm_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prdm1_ibamt_lm_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `lm_crr_seqno` decimal(3,0) NOT NULL COMMENT '한도이력순번',
  `ds_dthms` datetime NOT NULL COMMENT '결정일시',
  `xi_rpbl_ins_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추산책임보험한도금액',
  `xi_optn_ins_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추산임의보험한도금액',
  `xins_lmamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추산보험한도금액합계',
  `ds_rpbl_ins_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '결정책임보험한도금액',
  `ds_optn_ins_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '결정임의보험한도금액',
  `ds_ins_lmamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '결정보험한도금액합계',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '지급결의번호',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prdm1_ibamt_lm_crr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`lm_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대물1보험금한도이력';
