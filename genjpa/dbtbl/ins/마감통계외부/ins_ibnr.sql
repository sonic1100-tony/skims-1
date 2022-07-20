--
-- Table structure for table `ins_ibnr`
--

DROP TABLE IF EXISTS `ins_ibnr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ibnr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cvr_prm_diss_seqno` decimal(5,0) NOT NULL COMMENT '담보보험료분해순번',
  `rnd_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '경과보험료',
  `ibnr_rt` decimal(20,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'IBNR율',
  `nrpt_cr_dmamt` decimal(17,7) NOT NULL DEFAULT '0.0000000' COMMENT '미보고발생손해액',
  `rfd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준비금구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ibnr_00` (`cls_yymm`,`ins_imcd`,`rertr_flgcd`,`plyno`,`incm_prm_cr_seqno`,`cvrcd`,`cvr_seqno`,`cvr_prm_diss_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IBNR';
