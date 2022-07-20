--
-- Table structure for table `ins_rk_nv_trvxp`
--

DROP TABLE IF EXISTS `ins_rk_nv_trvxp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rk_nv_trvxp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trv_rpt_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출장보고번호',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `ddamt` decimal(15,0) DEFAULT NULL COMMENT '일당금액',
  `ddalw_emamt` decimal(15,0) DEFAULT NULL COMMENT '일당청구금액',
  `ldgcs` decimal(15,0) DEFAULT NULL COMMENT '숙박비',
  `ldgcs_rqamt` decimal(15,0) DEFAULT NULL COMMENT '숙박비신청금액',
  `air_emamt` decimal(15,0) DEFAULT NULL COMMENT '항공청구금액',
  `air_us_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항공사용사유',
  `rlwy_emamt` decimal(15,0) DEFAULT NULL COMMENT '철도청구금액',
  `rlwy_us_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '철도사용사유',
  `taxi_emamt` decimal(15,0) DEFAULT NULL COMMENT '택시청구금액',
  `taxi_us_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '택시사용사유',
  `rntcr_emamt` decimal(15,0) DEFAULT NULL COMMENT '렌트카청구금액',
  `rntcr_us_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카사용사유',
  `olcs` decimal(15,0) DEFAULT NULL COMMENT '유류대',
  `ctpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종명',
  `trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '주행거리',
  `olcs_unprc` decimal(15,0) DEFAULT NULL COMMENT '유류대단가',
  `fuel_effc_dst` decimal(10,0) DEFAULT NULL COMMENT '연료효율거리',
  `pst_amt` decimal(15,0) DEFAULT NULL COMMENT '경유금액',
  `hwy_sctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고속도로구간명',
  `smamt` decimal(15,0) DEFAULT NULL COMMENT '합계금액',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `et_csamt` decimal(15,0) DEFAULT NULL COMMENT '기타비용금액',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `trv_days` decimal(7,2) DEFAULT NULL COMMENT '출장일수',
  `ldg_days` decimal(7,2) DEFAULT NULL COMMENT '숙박일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_rk_nv_trvxp_00` (`trv_rpt_no`,`chrps_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험조사출장비';
