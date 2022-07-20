--
-- Table structure for table `fin_wh_cltn_rpr`
--

DROP TABLE IF EXISTS `fin_wh_cltn_rpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_wh_cltn_rpr` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `rpr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신고구분코드',
  `rpr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신고대상구분코드',
  `psct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '인원수',
  `py_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급합계금액',
  `ic_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소득세액',
  `fnf_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '농특세액',
  `ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가산세액',
  `rt_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '반송세액',
  `pym_ixamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부소득세액',
  `pym_ffamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부농특세액',
  `bfmm_nptrt_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월미환급세액',
  `prv_rtn_rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기환급신청금액',
  `sb_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차감잔액',
  `gn_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반환급세액',
  `trst_prop_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신탁재산환급세액',
  `et_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타환급세액',
  `md_bj_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '조정대상환급세액',
  `cm_md_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월조정환급세액',
  `mmthr_cf_rtn_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차월이월환급세액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`rpr_flgcd`,`rpr_bj_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원천징수신고';
