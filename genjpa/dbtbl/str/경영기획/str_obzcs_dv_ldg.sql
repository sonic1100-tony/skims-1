--
-- Table structure for table `str_obzcs_dv_ldg`
--

DROP TABLE IF EXISTS `str_obzcs_dv_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_obzcs_dv_ldg` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `dvno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배분번호',
  `dv_rk_lvl` decimal(1,0) NOT NULL COMMENT '배분단계레벨',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비유형코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화금액',
  `fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화금액',
  `dsodt` date DEFAULT NULL COMMENT '발의일자',
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의기관코드',
  `dp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의직원번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산기관코드',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인번호',
  `bzcs_o1_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비1차배분코드',
  `o1_dvbf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1차배분전금액',
  `o1_dvbf_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차배분전보험종목코드',
  `o1_dvbf_bzcdv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차배분전사업비배분유형코드',
  `o1_dv_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '1차배분비율',
  `o1_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1차배분금액',
  `bzcs_o2_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비2차배분코드',
  `o2_dvbf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '2차배분전금액',
  `o2_dvbf_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차배분전보험종목코드',
  `o2_dvbf_bzcdv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차배분전사업비배분유형코드',
  `o2_dv_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '2차배분비율',
  `o2_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '2차배분금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`dvno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구사업비배분원장';
