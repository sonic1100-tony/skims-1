--
-- Table structure for table `ins_ri_crinf`
--

DROP TABLE IF EXISTS `ins_ri_crinf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ri_crinf` (
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종여부',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자코드',
  `cr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약년월',
  `cr_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약내용',
  `rins_cr_kndcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약종류코드',
  `rins_cr_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약구분코드',
  `rins_cr_dt_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약상세구분코드',
  `cr_strdt` date DEFAULT NULL COMMENT '계약시작일자',
  `cr_nddt` date DEFAULT NULL COMMENT '계약종료일자',
  `ccst_prm_cd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출기준보험료코드',
  `rins_ap_stncd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험적용기준코드',
  `cvr_re_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보출재여부',
  `cnvcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화코드',
  `re_cm_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재수수료구분코드',
  `pftcm_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이익수수료구분코드',
  `re_bzcs_rt` decimal(5,2) DEFAULT NULL COMMENT '출재사업비비율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`crano`,`sno`),
  KEY `idx_ins_ri_crinf_10` (`brk_rincd`,`fnl_yn`,`cr_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험계약정보';
