--
-- Table structure for table `ins_cumny_cc_spc`
--

DROP TABLE IF EXISTS `ins_cumny_cc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cumny_cc_spc` (
  `py_bjno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입년월',
  `cu_prm` decimal(15,0) DEFAULT NULL COMMENT '적립보험료',
  `cu_nprm` decimal(15,0) DEFAULT NULL COMMENT '적립순보험료',
  `pym_dudt` date DEFAULT NULL COMMENT '납입응당일자',
  `ap_rato` decimal(12,6) DEFAULT NULL COMMENT '적용이율',
  `cu_netp_prm_cuamt` decimal(17,2) DEFAULT NULL COMMENT '적립순보식보험료적립금액',
  `ppy_nt` decimal(15,0) DEFAULT NULL COMMENT '선납이자',
  `piamt_sm` decimal(15,0) DEFAULT NULL COMMENT '원리금액합계',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `cc_stdt` date DEFAULT NULL COMMENT '산출기준일자',
  `rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '경과년수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`py_bjno`,`plyno`,`incm_prm_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적립금산출내역';
