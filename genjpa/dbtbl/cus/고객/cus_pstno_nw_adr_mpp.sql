--
-- Table structure for table `cus_pstno_nw_adr_mpp`
--

DROP TABLE IF EXISTS `cus_pstno_nw_adr_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_pstno_nw_adr_mpp` (
  `bld_admno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '건물관리번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리',
  `mntn_stno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산번지',
  `mn_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주번지',
  `sub_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부번지',
  `laco_dong_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동구분코드',
  `road_nm_flgcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명구분코드',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `grod_undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지상지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `dt_bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세건물명',
  `tot_nw_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체신규주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `are_no` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구역번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bld_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편번호신규주소매핑';
