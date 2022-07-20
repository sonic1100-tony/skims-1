--
-- Table structure for table `str_dm_nvcs_o2_dv`
--

DROP TABLE IF EXISTS `str_dm_nvcs_o2_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_dm_nvcs_o2_dv` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '배분비율',
  `dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배분금액',
  `ins_imcd_lvl` decimal(1,0) NOT NULL COMMENT '보험종목코드레벨',
  `re_csf_acc_sbjcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재분류계정과목코드',
  `bzcs_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비보험종목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_dm_nvcs_o2_dv_00` (`slpdt`,`slpno`,`slp_lnno`,`sno`,`rr_orgcd`,`bzcs_tpcd`,`ins_imcd`,`gdcd`,`sl_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해조사비2차배분';
