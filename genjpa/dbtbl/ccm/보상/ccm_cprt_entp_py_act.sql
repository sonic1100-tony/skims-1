--
-- Table structure for table `ccm_cprt_entp_py_act`
--

DROP TABLE IF EXISTS `ccm_cprt_entp_py_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cprt_entp_py_act` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `mntr_act_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '주거래계좌여부',
  `dpsr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cprt_entp_py_act_00` (`ctmno`,`cprt_entp_seqno`,`bkcd`,`actno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체지급계좌';
