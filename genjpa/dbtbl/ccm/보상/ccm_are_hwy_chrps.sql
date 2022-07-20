--
-- Table structure for table `ccm_are_hwy_chrps`
--

DROP TABLE IF EXISTS `ccm_are_hwy_chrps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_are_hwy_chrps` (
  `are_hwy_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '지역고속도로순번',
  `clm_plc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고장소구분코드',
  `sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '읍면동',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `nv_chrps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사담당자구분코드',
  `prs_nvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표조사자여부',
  `cmp_dv_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상배당종류코드',
  `ordr_dv_chrps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '순차배당담당자여부',
  `wrk_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무시작시각',
  `wrk_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무종료시각',
  `as_dthms` datetime DEFAULT NULL COMMENT '배정일시',
  `hwy_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고속도로구간코드',
  `hwy_sctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고속도로구간명',
  `cdnvl_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌표값1',
  `cdnvl_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌표값2',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`are_hwy_seqno`),
  KEY `idx_ccm_are_hwy_chrps_01` (`ap_nddt`,`clm_plc_flgcd`,`nv_chrps_flgcd`,`sd`,`cmp_dv_kndcd`,`sgng`,`twmd`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지역고속도로담당자';
