--
-- Table structure for table `ins_dvpns_rgvlt_crrcd_adm`
--

DROP TABLE IF EXISTS `ins_dvpns_rgvlt_crrcd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_rgvlt_crrcd_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vltr_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '위반자주민등록번호',
  `ap_str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용시작년월',
  `ap_nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용종료년월',
  `rglt_vlt_crr_rtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반경력요율코드',
  `rglt_vltct` decimal(7,0) DEFAULT NULL COMMENT '법규위반건수',
  `clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고여부',
  `vl_bj_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상시작년월',
  `vl_bj_nd_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상종료년월',
  `vltdt_1` date DEFAULT NULL COMMENT '위반일자1',
  `vltdt_2` date DEFAULT NULL COMMENT '위반일자2',
  `vltdt_3` date DEFAULT NULL COMMENT '위반일자3',
  `vltdt_4` date DEFAULT NULL COMMENT '위반일자4',
  `vltdt_5` date DEFAULT NULL COMMENT '위반일자5',
  `vltdt_6` date DEFAULT NULL COMMENT '위반일자6',
  `vltdt_7` date DEFAULT NULL COMMENT '위반일자7',
  `vltdt_8` date DEFAULT NULL COMMENT '위반일자8',
  `vltdt_9` date DEFAULT NULL COMMENT '위반일자9',
  `vltdt_10` date DEFAULT NULL COMMENT '위반일자10',
  `usps_info` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이용자정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_rgvlt_crrcd_adm_00` (`vltr_rsno`,`ap_str_yymm`,`ap_nd_yymm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원법규위반경력코드관리';
