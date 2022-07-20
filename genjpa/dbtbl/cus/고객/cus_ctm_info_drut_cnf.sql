--
-- Table structure for table `cus_ctm_info_drut_cnf`
--

DROP TABLE IF EXISTS `cus_ctm_info_drut_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_info_drut_cnf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `pss_ctmct` decimal(10,0) DEFAULT NULL COMMENT '가망고객수',
  `inr_ctmct` decimal(10,0) DEFAULT NULL COMMENT '통합고객수',
  `ctm_info_adm_wrcs_ct` decimal(10,0) DEFAULT NULL COMMENT '고객정보관리동의서건수',
  `ispl_wrcs_ct` decimal(10,0) DEFAULT NULL COMMENT '가입설계동의서건수',
  `ctm_info_adm_agre_img_ct` decimal(10,0) DEFAULT NULL COMMENT '고객정보관리동의이미지건수',
  `ispl_wrcs_img_ct` decimal(10,0) DEFAULT NULL COMMENT '가입설계동의서이미지건수',
  `mktg_utl_wrcs_img_ct` decimal(10,0) DEFAULT NULL COMMENT '마케팅활용동의서이미지건수',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `chr_stf_iptdt` date DEFAULT NULL COMMENT '담당직원입력일자',
  `orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관장직원번호',
  `orghd_iptdt` date DEFAULT NULL COMMENT '기관장입력일자',
  `cmpln_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법감시직원번호',
  `cmpln_iptdt` date DEFAULT NULL COMMENT '준법감시입력일자',
  `hwmc_info_rgt_ct` decimal(10,0) DEFAULT NULL COMMENT '하우머치정보등록건수',
  `hwmc_pss_ctm_ct` decimal(10,0) DEFAULT NULL COMMENT '하우머치가망고객건수',
  `rlnm_cnfct` decimal(10,0) DEFAULT NULL COMMENT '실명확인건수',
  `rlnm_cnf_xcpt_ct` decimal(10,0) DEFAULT NULL COMMENT '실명확인예외건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_info_drut_cnf_00` (`wrkdt`)
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보파기확인';
