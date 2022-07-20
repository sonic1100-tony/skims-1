--
-- Table structure for table `ins_dvpns_inqct`
--

DROP TABLE IF EXISTS `ins_dvpns_inqct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_inqct` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `inqdt` date NOT NULL COMMENT '조회일자',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dvpns_tlm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원전문구분코드',
  `dvpns_us_oj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원이용목적구분코드',
  `dvpns_inq_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원조회직원구분코드',
  `onl_nml_inqct` decimal(7,0) DEFAULT NULL COMMENT '온라인정상조회건수',
  `onl_er_inqct` decimal(7,0) DEFAULT NULL COMMENT '온라인오류조회건수',
  `batch_nml_inqct` decimal(7,0) DEFAULT NULL COMMENT '배치정상조회건수',
  `batch_er_inqct` decimal(7,0) DEFAULT NULL COMMENT '배치오류조회건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_inqct_00` (`inqdt`,`stfno`,`dvpns_tlm_flgcd`,`dvpns_us_oj_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=900 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원조회건수';
