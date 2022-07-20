--
-- Table structure for table `cus_en_ctm_ud`
--

DROP TABLE IF EXISTS `cus_en_ctm_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_en_ctm_ud` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문고객명',
  `ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '국가코드',
  `is_gd_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입상품유형코드',
  `dmd_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자ID',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rq_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `apprs_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인자직원번호',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ud_rst_ctn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과의견',
  `ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과코드',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_en_ctm_ud_00` (`ctm_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='요주의고객심사';
