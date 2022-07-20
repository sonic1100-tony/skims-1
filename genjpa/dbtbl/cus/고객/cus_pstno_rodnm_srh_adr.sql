--
-- Table structure for table `cus_pstno_rodnm_srh_adr`
--

DROP TABLE IF EXISTS `cus_pstno_rodnm_srh_adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_pstno_rodnm_srh_adr` (
  `road_nm_flgcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '도로명구분코드',
  `twmd_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '읍면동일련번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `bldno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물번호',
  `bld_ct` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물건수',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `eng_road_nm_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문도로명주소',
  `eng_road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문도로명',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`road_nm_flgcd`,`twmd_sno`) USING BTREE,
  KEY `idx_cus_pstno_rodnm_srh_adr_01` (`sd`,`sgng`,`road_nm`),
  KEY `idx_cus_pstno_rodnm_srh_adr_02` (`road_nm`),
  KEY `idx_cus_pstno_rodnm_srh_adr_03` (`pstno`),
  KEY `idx_cus_pstno_rodnm_srh_adr_04` (`bf_pstno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편번호도로명검색주소';
