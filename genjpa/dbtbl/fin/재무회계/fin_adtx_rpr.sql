--
-- Table structure for table `fin_adtx_rpr`
--

DROP TABLE IF EXISTS `fin_adtx_rpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_adtx_rpr` (
  `rpr_prdno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '신고기수',
  `bzwpl_bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업장사업자번호',
  `pr_rpr_nptrt_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정신고미환급세액',
  `bzps_nrgt_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업자미등록공급가액',
  `bzps_nrgt_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업자미등록가산세액',
  `smdgm_prisn_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합계표제출불성실공급가액',
  `smdgm_prisn_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합계표제출불성실가산세액',
  `rpr_insnt_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신고불성실공급가액',
  `rpr_insnt_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신고불성실가산세액',
  `pym_insnt_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부불성실공급가액',
  `pym_insnt_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부불성실가산세액',
  `zrrt_rpisn_ad_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영세율신고불성실가산공급가액',
  `zrrt_rpisn_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영세율신고불성실가산세액',
  `syamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액합계',
  `ad_txamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가산세액합계',
  `et_rdu_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타경감세액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rpr_prdno`,`bzwpl_bzmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부가세신고';
