--
-- Table structure for table `ccm_hira_dmbil`
--

DROP TABLE IF EXISTS `ccm_hira_dmbil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_dmbil` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원서식구분코드',
  `hira_rcpdt` date NOT NULL COMMENT '심평원접수일자',
  `hira_dm_mdm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원청구매체구분코드',
  `afk_cr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'AFK발생여부',
  `mdorg_dmdt` date NOT NULL COMMENT '의료기관청구일자',
  `hira_md_orgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원의료기관코드',
  `mdorg_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관명',
  `mdorg_pdtnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료기관대표자명',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `hira_dm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원청구구분코드',
  `hira_dm_unt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원청구단위구분코드',
  `hira_trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원진료구분코드',
  `hira_trmt_feld_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료분야구분코드',
  `hira_trmt_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료형태코드',
  `trmt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '진료년월',
  `spcft_tct` decimal(7,0) NOT NULL COMMENT '명세서총건수',
  `trpa_amt` decimal(15,0) NOT NULL COMMENT '진료비금액',
  `pt_pyamt` decimal(15,0) NOT NULL COMMENT '환자납부금액',
  `emamt` decimal(15,0) NOT NULL COMMENT '청구금액',
  `wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성자명',
  `wrter_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성자주민번호',
  `vcr_dm_gr_symb` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대행청구단체기호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_dmbil_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원청구서';
