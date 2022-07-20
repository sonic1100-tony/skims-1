--
-- Table structure for table `fin_eme_rk_rfamt`
--

DROP TABLE IF EXISTS `fin_eme_rk_rfamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_eme_rk_rfamt` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `ppr_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위보험종목코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `rn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험료',
  `cn_rtamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '해약환급금액',
  `rtro_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수재보험료',
  `rtro_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재해약환급금액',
  `rprm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '재보험료',
  `cn_rtamt_ex` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '해약환급금액환입',
  `ps_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보유보험료',
  `cu_strt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '적립기준율',
  `curt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '적립율',
  `cm_eme_rk_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월비상위험준비금액',
  `lowt_curt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '최저적립율',
  `lowt_cu_emerk_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '최저적립비상위험준비금액',
  `bfmm_curt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '전월적립율',
  `bfmm_eme_rk_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월비상위험준비금액',
  `dfrn_eme_rk_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차이비상위험준비금액',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계여부',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비상위험준비금액';
