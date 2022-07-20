--
-- Table structure for table `fin_ln_bnd_mbr`
--

DROP TABLE IF EXISTS `fin_ln_bnd_mbr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ln_bnd_mbr` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `mbr_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회원권종류코드',
  `bfmm_dps_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월예탁보증금액',
  `nw_incr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신규증가금액',
  `nd_rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '만료감소금액',
  `sb_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대체금액',
  `cm_dps_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월예탁보증금액',
  `nlmit_srvlf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비한정내용연수금액',
  `nrtn_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미반환보증금액',
  `dmgnj_lfqam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손상차손금액',
  `rdt_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '감가상각금액',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대출채권회원권';
