--
-- Table structure for table `ins_atrnw_rj_rq_adm`
--

DROP TABLE IF EXISTS `ins_atrnw_rj_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_atrnw_rj_rq_adm` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ssdt` date NOT NULL COMMENT '발행일자',
  `ssno` decimal(5,0) NOT NULL COMMENT '발행번호',
  `scan_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔대상여부',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `rnwdt` date DEFAULT NULL COMMENT '갱신일자',
  `rnd_af_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경과후입력여부',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `crt_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `bfrnw_gn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갱신전보장보험료',
  `bfrnw_cu_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갱신전적립보험료',
  `rnw_af_gn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갱신후보장보험료',
  `rnw_af_cu_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갱신후적립보험료',
  `bfrnw_sb_prm` decimal(15,0) DEFAULT NULL COMMENT '갱신전대체보험료',
  `rnw_af_sb_prm` decimal(15,0) DEFAULT NULL COMMENT '갱신후대체보험료',
  `rnw_bf_rlpy_prm` decimal(15,0) DEFAULT NULL COMMENT '갱신전실납입보험료',
  `rnw_af_rlpy_prm` decimal(15,0) DEFAULT NULL COMMENT '갱신후실납입보험료',
  `rnw_af_id_prm` decimal(15,0) DEFAULT NULL COMMENT '갱신후증감보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`ssdt`,`ssno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동갱신거절신청관리';
