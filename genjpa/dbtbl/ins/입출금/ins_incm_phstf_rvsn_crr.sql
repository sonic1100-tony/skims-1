--
-- Table structure for table `ins_incm_phstf_rvsn_crr`
--

DROP TABLE IF EXISTS `ins_incm_phstf_rvsn_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_incm_phstf_rvsn_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `ch_rq_seqno` decimal(5,0) NOT NULL COMMENT '변경요청순번',
  `chdt` date NOT NULL COMMENT '변경일자',
  `cr_ta_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약이관상태코드',
  `chbf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전취급직원번호',
  `chaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후취급직원번호',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_incm_phstf_rvsn_crr_00` (`plyno`,`incm_prm_cr_seqno`,`ch_rq_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수입보험료취급직원정정이력';
