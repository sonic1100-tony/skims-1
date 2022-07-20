--
-- Table structure for table `ccm_bi_spc`
--

DROP TABLE IF EXISTS `ccm_bi_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bi_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dpodt` date NOT NULL COMMENT '매각일자',
  `dp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '매각담당자직원번호',
  `bips_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '낙찰자고객번호',
  `biamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '낙찰금액',
  `resv_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '내정금액',
  `dp_naamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매각계약금액',
  `dp_rest` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매각잔금',
  `rest_dp_prdt` date DEFAULT NULL COMMENT '잔금입금예정일자',
  `bi_rst` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '낙찰결과',
  `nw_rgtce_clrq_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '신규등록증징구여부',
  `nw_rgtce_clrq_dt` date DEFAULT NULL COMMENT '신규등록증징구일자',
  `sb_examt` decimal(15,0) DEFAULT '0' COMMENT '잔존물환입금액',
  `sb_cost_dp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔존물대금입금여부',
  `sb_cost_npy_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔존물대금미납입사유',
  `sb_dp_cs` decimal(15,0) DEFAULT '0' COMMENT '잔존물매각비용',
  `tra_rsccs_amt` decimal(15,0) DEFAULT '0' COMMENT '견인구난비금액',
  `sb_keep_cs` decimal(15,0) DEFAULT '0' COMMENT '잔존물보관비용',
  `dp_cm` decimal(15,0) DEFAULT '0' COMMENT '매각수수료',
  `et_csamt` decimal(15,0) DEFAULT '0' COMMENT '기타비용금액',
  `cramt` decimal(15,0) DEFAULT '0' COMMENT '차량가액',
  `dp_dcu_clrq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매각서류징구여부',
  `dpdt` date DEFAULT NULL COMMENT '입금일자',
  `bidt` date DEFAULT NULL COMMENT '낙찰일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_bi_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='낙찰내역';
