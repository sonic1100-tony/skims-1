--
-- Table structure for table `cus_ctm_cntad_rgt_lmit`
--

DROP TABLE IF EXISTS `cus_ctm_cntad_rgt_lmit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntad_rgt_lmit` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cntad_rgt_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처등록제한구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '시작전화일련번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `cntad_rgt_lmit_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처등록제한여부',
  `bsc_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_cntad_rgt_lmit_00` (`cntad_rgt_lmit_flgcd`,`tlano`,`tltno`,`str_tlsno`,`ctmno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객연락처등록제한';
