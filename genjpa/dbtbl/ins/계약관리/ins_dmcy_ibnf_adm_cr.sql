--
-- Table structure for table `ins_dmcy_ibnf_adm_cr`
--

DROP TABLE IF EXISTS `ins_dmcy_ibnf_adm_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dmcy_ibnf_adm_cr` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자고객번호',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객유형코드',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약상태코드',
  `t1_prm` decimal(15,0) NOT NULL COMMENT '1회보험료',
  `dmcy_dldt` date NOT NULL COMMENT '휴면처리일자',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `uramt` decimal(17,2) NOT NULL COMMENT '발생금액',
  `rnd_ntamt` decimal(15,0) DEFAULT NULL COMMENT '경과이자금액',
  `rtamt` decimal(17,2) NOT NULL COMMENT '환급금액',
  `dmcy_py_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면지급상태코드',
  `dmcy_py_stadt` date DEFAULT NULL COMMENT '휴면지급상태일자',
  `fntn_sbscr_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재단출연구분코드',
  `fntn_scrdt` date DEFAULT NULL COMMENT '재단출연일자',
  `tz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류여부',
  `py_lmit_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급제한여부',
  `dmcy_amt_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면금액구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴면보험금관리계약';
