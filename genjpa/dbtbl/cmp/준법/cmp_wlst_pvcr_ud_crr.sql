--
-- Table structure for table `cmp_wlst_pvcr_ud_crr`
--

DROP TABLE IF EXISTS `cmp_wlst_pvcr_ud_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_wlst_pvcr_ud_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재결과코드',
  `o1_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재의견',
  `is_pr_gdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입예정상품코드',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재결과코드',
  `o2_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_wlst_pvcr_ud_crr_00` (`wrkdt`,`plyno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='WATCHLIST 기계약심사이력';
