--
-- Table structure for table `ins_rk_nv_trv_plct`
--

DROP TABLE IF EXISTS `ins_rk_nv_trv_plct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rk_nv_trv_plct` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trv_pl_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출장계획번호',
  `trv_1_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장1직원번호',
  `trv_2_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장2직원번호',
  `trv_3_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장3직원번호',
  `trv_4_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장4직원번호',
  `trv_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장담당자직원번호',
  `trv_chrps_prv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장담당자결재여부',
  `trv_chrps_ordr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장담당자지시내용',
  `trv_prv_dthms` datetime DEFAULT NULL COMMENT '출장결재일시',
  `bsns_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무결재자직원번호',
  `bsns_prvmn_prv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무결재자결재여부',
  `bsns_prvmn_ordr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무결재자지시내용',
  `bsns_prv_dthms` datetime DEFAULT NULL COMMENT '업무결재일시',
  `trv_strdt` date DEFAULT NULL COMMENT '출장시작일자',
  `trv_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장시작시각',
  `trv_nddt` date DEFAULT NULL COMMENT '출장종료일자',
  `trv_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장종료시각',
  `o1_strt_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차출발월일',
  `o1_strt_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차출발시간',
  `o1_stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차출발지명',
  `o1_arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차도착지명',
  `o1_ldg_area_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차숙박지명',
  `o2_strt_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차출발월일',
  `o2_strt_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차출발시간',
  `o2_stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차출발지명',
  `o2_arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차도착지명',
  `o2_ldg_area_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차숙박지명',
  `o3_strt_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차출발월일',
  `o3_strt_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차출발시간',
  `o3_stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차출발지명',
  `o3_arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차도착지명',
  `o3_ldg_area_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차숙박지명',
  `o4_strt_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차출발월일',
  `o4_strt_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차출발시간',
  `o4_stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차출발지명',
  `o4_arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차도착지명',
  `o4_ldg_area_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차숙박지명',
  `o5_strt_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차출발월일',
  `o5_strt_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차출발시간',
  `o5_stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차출발지명',
  `o5_arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차도착지명',
  `o5_ldg_area_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차숙박지명',
  `aip_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항공기여부',
  `rlwy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '철도여부',
  `taxi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '택시여부',
  `crp_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인차량여부',
  `psn_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인차량여부',
  `et_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타여부',
  `et_dt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타상세내용',
  `rnt_car_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카사용여부',
  `us_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용사유',
  `trv_days` decimal(7,2) DEFAULT NULL COMMENT '출장일수',
  `ldg_days` decimal(7,2) DEFAULT NULL COMMENT '숙박일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_rk_nv_trv_plct_00` (`trv_pl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험조사출장계획서';
