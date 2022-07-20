--
-- Table structure for table `lse_lsetm_bsns_chr_dv`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_chr_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_chr_dv` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `incld_cnd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '포함조건여부',
  `dv_str_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배당시작금액',
  `dv_nd_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배당종료금액',
  `ad_dv_str_amt` decimal(17,2) DEFAULT NULL COMMENT '추가배당시작금액',
  `ad_dv_nd_amt` decimal(17,2) DEFAULT NULL COMMENT '추가배당종료금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`lsetm_dv_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무담당자배당';
