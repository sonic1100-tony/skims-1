--
-- Table structure for table `fin_pa_it_spc`
--

DROP TABLE IF EXISTS `fin_pa_it_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pa_it_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bdl_tf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일괄이체업무구분코드',
  `bdl_tf_dl_seqno` decimal(5,0) NOT NULL COMMENT '일괄이체처리순번',
  `pa_spc_seqno` decimal(5,0) NOT NULL COMMENT '임금내역순번',
  `pa_it_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임금항목처리구분코드',
  `pa_it_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임금항목세부구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `bjamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대상금액',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `nml_er_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상오류여부',
  `ln_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출종목코드',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납정산번호',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `org_tfdt` date DEFAULT NULL COMMENT '원이체일자',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `bll_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '어음원장번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_pa_it_spc_00` (`st_yymm`,`bdl_tf_bsns_flgcd`,`bdl_tf_dl_seqno`,`pa_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임금항목내역';
