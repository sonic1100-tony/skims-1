--
-- Table structure for table `cus_pstno_rodnm_ba_adr`
--

DROP TABLE IF EXISTS `cus_pstno_rodnm_ba_adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_pstno_rodnm_ba_adr` (
  `pstno_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호ID',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `pst_sno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편일련번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `dt_bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세건물명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `road_nm_flgcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '도로명구분코드',
  `laco_dong_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동구분코드',
  `laco_dngnm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동명',
  `ams_dong_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '행정동구분코드',
  `ams_dngnm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '행정동명',
  `bld_admno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물관리번호',
  `twmd_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '읍면동일련번호',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `cmpx_bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합건물명',
  `eng_road_nm_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문도로명주소',
  `eng_road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문도로명',
  `tot_nw_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체신규주소',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`pstno_id`) USING BTREE,
  KEY `idx_cus_pstno_rodnm_ba_adr_01` (`road_nm_flgcd`,`twmd_sno`),
  KEY `idx_cus_pstno_rodnm_ba_adr_05` (`road_nm`,`mn_bldno`,`sub_bldno`,`sd`,`sgng`),
  KEY `idx_cus_pstno_rodnm_ba_adr_06` (`bldnm`,`sd`,`sgng`,`road_nm`),
  KEY `idx_cus_pstno_rodnm_ba_adr_03` (`pstno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편번호도로명기본주소';
