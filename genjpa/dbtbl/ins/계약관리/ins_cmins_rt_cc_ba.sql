--
-- Table structure for table `ins_cmins_rt_cc_ba`
--

DROP TABLE IF EXISTS `ins_cmins_rt_cc_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_rt_cc_ba` (
  `rt_cc_no` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출번호',
  `rt_cc_prg_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출진행단계코드',
  `cc_dt` date DEFAULT NULL COMMENT '산출일자',
  `rqudt` date DEFAULT NULL COMMENT '의뢰일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `befo_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전증권번호',
  `befo_rt_cc_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전요율산출번호',
  `cplt_hpdt` date DEFAULT NULL COMMENT '완료희망일자',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `rt_cc_objnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출물건명',
  `cer_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자직원번호',
  `rqcl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰자직원번호',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고여부',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규갱신구분코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `rt_cc_xmn_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출검토의견',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `nxt_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결재자직원번호',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `cr_cc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결여부',
  `crcc_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결증권번호',
  `rt_cc_trnm_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출전달사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rt_cc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험요율산출기본';
