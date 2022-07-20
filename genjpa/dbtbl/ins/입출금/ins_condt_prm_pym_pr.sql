--
-- Table structure for table `ins_condt_prm_pym_pr`
--

DROP TABLE IF EXISTS `ins_condt_prm_pym_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_condt_prm_pym_pr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `crt_relpc_seqno` decimal(10,0) NOT NULL COMMENT '계약자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `mgcmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사여부',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험료',
  `woncr_cv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_condt_prm_pym_pr_00` (`plyno`,`pym_seq`,`ptccd`,`crt_relpc_seqno`,`mncd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수보험료납입예정';
