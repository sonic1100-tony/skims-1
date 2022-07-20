--
-- Table structure for table `ins_rins_crano_info`
--

DROP TABLE IF EXISTS `ins_rins_crano_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_crano_info` (
  `rins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약번호',
  `rins_cr_ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약배서번호',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `rins_ap_stncd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험적용기준코드',
  `rins_cr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약년월',
  `rins_cr_kndcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약종류코드',
  `rins_cr_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약구분코드',
  `rins_cr_dt_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약상세구분코드',
  `rins_cr_strdt` date DEFAULT NULL COMMENT '재보험계약시작일자',
  `rins_cr_nddt` date DEFAULT NULL COMMENT '재보험계약종료일자',
  `ccst_prm_cd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출기준보험료코드',
  `re_cm_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재수수료구분코드',
  `pftcm_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이익수수료구분코드',
  `re_bzcs_rt` decimal(5,2) DEFAULT NULL COMMENT '출재사업비비율',
  `rins_cr_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험계약내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rins_crano`,`rins_cr_ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험재보험계약정보';
