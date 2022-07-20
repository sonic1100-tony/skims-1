--
-- Table structure for table `lse_dyb_mdorg_dgn_crst`
--

DROP TABLE IF EXISTS `lse_dyb_mdorg_dgn_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dyb_mdorg_dgn_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `de_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '사망건수',
  `sel_obs_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '후유장해건수',
  `dgn_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '진단건수',
  `op_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '수술건수',
  `hsp_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '입원건수',
  `otp_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '통원건수',
  `hsp_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '입원일수',
  `py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dyb_mdorg_dgn_crst_00` (`stdt`,`hspcd`,`bzmno`,`dgncd`,`dgncd_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일별의료기관진단현황';
