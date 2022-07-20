--
-- Table structure for table `lse_clmnv_st_trpa_ud`
--

DROP TABLE IF EXISTS `lse_clmnv_st_trpa_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_st_trpa_ud` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `trpa_ud_rgt_seqno` decimal(5,0) NOT NULL COMMENT '진료비심사등록순번',
  `dtspc_rgt_seqno` decimal(5,0) DEFAULT NULL COMMENT '세부내역등록순번',
  `requ_seq` decimal(3,0) DEFAULT NULL COMMENT '의뢰회차',
  `mdcf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '치료비구분코드',
  `md_rs_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정사유대분류코드',
  `md_rs_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정사유중분류코드',
  `md_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정내용',
  `udwr_mdamt` decimal(15,0) DEFAULT '0' COMMENT '심사자조정금액',
  `cmp_chrps_mdamt` decimal(15,0) DEFAULT '0' COMMENT '보상담당자조정금액',
  `ud_md_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사조정유형코드',
  `ud_md_tp_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사조정유형사유',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_seqno`,`trmt_itcd`,`trpa_ud_rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사기준진료비심사';
