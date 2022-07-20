--
-- Table structure for table `ins_re_prg_crr`
--

DROP TABLE IF EXISTS `ins_re_prg_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_re_prg_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `re_prg_admno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행관리번호',
  `prg_crr_seqno` decimal(5,0) NOT NULL COMMENT '진행이력순번',
  `crr_cr_dthms` datetime NOT NULL COMMENT '이력발생일시',
  `re_prgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험문서번호',
  `dcu_trs_dthms` datetime DEFAULT NULL COMMENT '문서송신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_re_prg_crr_00` (`re_prg_admno`,`prg_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출재진행이력';
