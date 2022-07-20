--
-- Table structure for table `ins_rlpmi_cvr_scp_dbcs`
--

DROP TABLE IF EXISTS `ins_rlpmi_cvr_scp_dbcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rlpmi_cvr_scp_dbcs` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자주민번호',
  `cocpy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당타사구분코드',
  `cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `crt_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자성명',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자주민번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `hamt_cr_ctm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액계약고객여부',
  `pym_prm` decimal(17,2) DEFAULT '0.00' COMMENT '납입보험료',
  `pym_pr_prm` decimal(15,0) DEFAULT '0' COMMENT '납입예정보험료',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`nrdps_rsno`,`cocpy_flgcd`,`cmpcd`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손담보자사중복현황';
