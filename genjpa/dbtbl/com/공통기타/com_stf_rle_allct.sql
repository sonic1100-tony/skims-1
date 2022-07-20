--
-- Table structure for table `com_stf_rle_allct`
--

DROP TABLE IF EXISTS `com_stf_rle_allct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_stf_rle_allct` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원코드',
  `allct_seqno` decimal(5,0) NOT NULL COMMENT '할당순번',
  `rle_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '역할명',
  `rle_strdt` date DEFAULT NULL COMMENT '역할시작일자',
  `rle_nddt` date DEFAULT NULL COMMENT '역할종료일자',
  `rle_frc_nd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역할강제종료여부',
  `rle_frc_nddt` date DEFAULT NULL COMMENT '역할강제종료일자',
  `nd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종료여부',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_stf_rle_allct_00` (`stfcd`,`allct_seqno`,`rle_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원역할할당';
