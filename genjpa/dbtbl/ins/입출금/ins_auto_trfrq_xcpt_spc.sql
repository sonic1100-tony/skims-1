--
-- Table structure for table `ins_auto_trfrq_xcpt_spc`
--

DROP TABLE IF EXISTS `ins_auto_trfrq_xcpt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_trfrq_xcpt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `auto_tfdt` date NOT NULL COMMENT '자동이체일자',
  `requ_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '의뢰최종납입년월',
  `rq_pym_seq` decimal(5,0) NOT NULL COMMENT '요청납입회차',
  `nrq_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미의뢰유형코드',
  `tf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체유형코드',
  `tf_bj_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체대상년월',
  `tf_bjdt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체대상일코드',
  `bk_or_crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행/카드회사코드',
  `nt_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자이체희망일코드',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체금액',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `nrq_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미의뢰사유',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_auto_trfrq_xcpt_spc_00` (`plyno`,`auto_tfdt`,`requ_fnl_pym_yymm`,`rq_pym_seq`,`nrq_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체의뢰제외내역';
