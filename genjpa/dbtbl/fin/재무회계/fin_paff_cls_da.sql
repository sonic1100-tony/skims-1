--
-- Table structure for table `fin_paff_cls_da`
--

DROP TABLE IF EXISTS `fin_paff_cls_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_paff_cls_da` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `rtm_slr_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직급여분류코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `pter_dpst_dpamt_abamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말예치예치금장부가액',
  `nt_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자증식금액',
  `sdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당금액',
  `rfd_prpn_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '준비금비례사업비',
  `cm_incr_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월증가합계금액',
  `py_rtm_ins_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급퇴직보험예치금액',
  `py_ndamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급미처리금액',
  `cmnd_rtmns_dpamt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말퇴직보험예치금잔액',
  `bmed_uc_pf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월말미수수익',
  `cmnd_uc_pf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말미수수익',
  `pter_pvamt_abamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말충당금액장부가액',
  `pter_mdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말조정금액',
  `pter_fnl_pvamt_abamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말최종충당금액장부가액',
  `cmnd_rtm_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말퇴직추계금액',
  `cm_py_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월지급퇴직금액',
  `cm_py_rtm_ndamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월지급퇴직미처리금액',
  `shrt_ad_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미달추가계상금액',
  `cmnd_es_dty_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말설정의무금액',
  `bmed_esamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월말설정금액',
  `cmnd_pvamt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말충당금잔액',
  `cmnd_rtm_slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월말퇴직급여금액',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인사마감자료';
