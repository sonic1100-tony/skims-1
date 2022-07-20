--
-- Table structure for table `cus_icdc_rq_crr`
--

DROP TABLE IF EXISTS `cus_icdc_rq_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_icdc_rq_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물품목코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `st_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준년도',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_dthms` datetime DEFAULT NULL COMMENT '신청일시',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `isdt` date DEFAULT NULL COMMENT '발급일자',
  `is_dthms` datetime DEFAULT NULL COMMENT '발급일시',
  `is_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급상태코드',
  `icdc_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득공제신청구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_icdc_rq_crr_00` (`ctmno`,`ap_nd_dthms`,`ap_str_dthms`,`prnot_itmcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소득공제신청이력';
