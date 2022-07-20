--
-- Table structure for table `ins_rlpmi_cvr_scp_dbcdt`
--

DROP TABLE IF EXISTS `ins_rlpmi_cvr_scp_dbcdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rlpmi_cvr_scp_dbcdt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자주민번호',
  `cocpy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당타사구분코드',
  `cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장내용코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보특성코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `isamt` decimal(17,2) DEFAULT '0.00' COMMENT '가입금액',
  `trt_prm` decimal(15,0) DEFAULT '0' COMMENT '특약보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rlpmi_cvr_scp_dbcdt_00` (`stdt`,`nrdps_rsno`,`cocpy_flgcd`,`cmpcd`,`plyno`,`gn_cncd`,`cvr_spcd`,`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손담보자사중복현황상세';
