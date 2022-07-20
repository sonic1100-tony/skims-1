--
-- Table structure for table `igd_cr_cvr_as_it`
--

DROP TABLE IF EXISTS `igd_cr_cvr_as_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cr_cvr_as_it` (
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `rlpmi_fxamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '실손정액구분코드',
  `py_st_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기준단위코드',
  `prpn_cmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비례보상여부',
  `py_st_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기준설명',
  `xc_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '할증대상여부',
  `trt_chrct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약인물구분코드',
  `lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '한도금액',
  `lmamt_us_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한도금액사용구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cr_cvrcd`,`as_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약담보사정항목';
