--
-- Table structure for table `ins_rins_cr_adm_tot`
--

DROP TABLE IF EXISTS `ins_rins_cr_adm_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_cr_adm_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rins_cr_admno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약관리번호',
  `rins_st_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험기준유형코드',
  `rins_stno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험기준번호',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `rins_st_strdt` date NOT NULL COMMENT '재보험기준시작일자',
  `rins_st_nddt` date NOT NULL COMMENT '재보험기준종료일자',
  `ppr_rins_cr_admno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '상위재보험계약관리번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rins_adm_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험관리용도코드',
  `thcp_nre_woncv_prm` decimal(15,0) DEFAULT NULL COMMENT '당사순출재원화환산보험료',
  `thcp_woncv_re_cm` decimal(15,0) DEFAULT NULL COMMENT '당사원화환산출재수수료',
  `tot_nre_woncv_prm` decimal(15,0) DEFAULT NULL COMMENT '전체순출재원화환산보험료',
  `tot_woncv_re_cm` decimal(15,0) DEFAULT NULL COMMENT '전체원화환산출재수수료',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `rm_perd_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금기한사용여부',
  `rm_perdt` date DEFAULT NULL COMMENT '송금기한일자',
  `prv_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토내용',
  `fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재직원번호',
  `fnl_prv_cplt_dthms` datetime DEFAULT NULL COMMENT '최종결재완료일시',
  `fnl_prvmn_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재자의견',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_cr_adm_tot_00` (`rins_cr_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험계약관리집계';
