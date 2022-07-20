--
-- Table structure for table `b1_220323_str_bzcs_o2_cvr_dv`
--

DROP TABLE IF EXISTS `b1_220323_str_bzcs_o2_cvr_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_220323_str_bzcs_o2_cvr_dv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `sub_sno` decimal(13,0) NOT NULL DEFAULT '0' COMMENT '서브일련번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '배분비율',
  `dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배분금액',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`slpdt`),
  UNIQUE KEY `pux_str_bzcs_o2_cvr_dv_00` (`slpdt`,`slpno`,`slp_lnno`,`sno`,`rr_orgcd`,`bzcs_tpcd`,`ins_imcd`,`sl_tpcd`,`sub_sno`,`cvrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비2차담보배분'
