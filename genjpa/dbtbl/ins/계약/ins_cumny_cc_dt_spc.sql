--
-- Table structure for table `ins_cumny_cc_dt_spc`
--

DROP TABLE IF EXISTS `ins_cumny_cc_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cumny_cc_dt_spc` (
  `py_bjno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `ap_rato` decimal(12,6) DEFAULT NULL COMMENT '적용이율',
  `lowt_gu_rato` decimal(12,6) DEFAULT NULL COMMENT '최저보증이율',
  `rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '경과년수',
  `rnd_days` decimal(5,0) DEFAULT NULL COMMENT '경과일수',
  `yy_und_remn_strdt` date DEFAULT NULL COMMENT '년미만잔여시작일자',
  `cc_stdt` date DEFAULT NULL COMMENT '산출기준일자',
  `yy_cu_rato_cfc` decimal(12,6) DEFAULT NULL COMMENT '년적립이율계수',
  `dy_cu_rato_cfc` decimal(12,6) DEFAULT NULL COMMENT '일적립이율계수',
  `cc_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`py_bjno`,`plyno`,`incm_prm_cr_seqno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적립금산출세부내역';
