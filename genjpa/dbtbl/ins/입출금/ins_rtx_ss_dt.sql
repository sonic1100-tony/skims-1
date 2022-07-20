--
-- Table structure for table `ins_rtx_ss_dt`
--

DROP TABLE IF EXISTS `ins_rtx_ss_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rtx_ss_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `gr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체증권번호',
  `str_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '시작납입회차',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `pym_ct` decimal(3,0) DEFAULT NULL COMMENT '납입횟수',
  `str_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작납입년월',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `rpamt` decimal(17,2) DEFAULT NULL COMMENT '영수금액',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rtx_ss_dt_00` (`rtxno`,`plyno`,`plno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증발행상세';
