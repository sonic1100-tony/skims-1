--
-- Table structure for table `cus_bz_fml_ctm_wst_pr`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_wst_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_wst_pr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wst_pr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '폐기예정년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `ctm_wst_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객폐기사유코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `wst_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '폐기여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_wst_pr_00` (`wst_pr_yymm`,`stfno`,`bz_fml_ctm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객폐기예정';
