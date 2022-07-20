--
-- Table structure for table `cus_befo_inq_wrcs`
--

DROP TABLE IF EXISTS `cus_befo_inq_wrcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_befo_inq_wrcs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `out_ky_no` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '출력키번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `befo_inq_agre_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사전조회동의문서구분코드',
  `crdif_inq_agre_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보조회동의방법코드',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `cnf_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인내용',
  `agre_admno` bigint(20) unsigned DEFAULT NULL COMMENT '동의관리번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_befo_inq_wrcs_00` (`ctm_dscno`,`out_ky_no`,`stfno`,`sno`,`befo_inq_agre_dcu_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사전조회동의서';
