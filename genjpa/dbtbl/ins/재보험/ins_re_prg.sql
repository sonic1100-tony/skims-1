--
-- Table structure for table `ins_re_prg`
--

DROP TABLE IF EXISTS `ins_re_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_re_prg` (
  `re_prg_admno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행관리번호',
  `re_prg_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행대분류코드',
  `re_prg_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행소분류코드',
  `re_prgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재진행코드',
  `prg_dl_dthms` datetime NOT NULL COMMENT '진행처리일시',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `bsns_dl_alarm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '업무처리알람여부',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `o1_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차상대처코드',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `ppr_re_prg_admno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위출재진행관리번호',
  `xi_py_ppdt` date DEFAULT NULL COMMENT '추산지급계상일자',
  `rert_stno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재율기준번호',
  `ccc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CCC여부',
  `mgcmp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`re_prg_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출재진행';
