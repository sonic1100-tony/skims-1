--
-- Table structure for table `str_bzcs_dv_bdl_bj`
--

DROP TABLE IF EXISTS `str_bzcs_dv_bdl_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_dv_bdl_bj` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '01' COMMENT '환입환수구분코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '일련번호',
  `dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '배분비율',
  `dv_bjamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배분대상금액',
  `ttamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '집계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`ntacc_cd`,`ex_rcv_flgcd`,`rr_orgcd`,`ins_imcd`,`sl_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분일괄대상';
