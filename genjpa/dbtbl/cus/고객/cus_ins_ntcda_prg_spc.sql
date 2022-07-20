--
-- Table structure for table `cus_ins_ntcda_prg_spc`
--

DROP TABLE IF EXISTS `cus_ins_ntcda_prg_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ins_ntcda_prg_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `prg_seqno` decimal(3,0) NOT NULL COMMENT '진행순번',
  `da_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료진행상태코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재내용',
  `sms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ins_ntcda_prg_spc_00` (`rcpno`,`prg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험안내자료진행내역';
