--
-- Table structure for table `cus_wr_tlno_adm`
--

DROP TABLE IF EXISTS `cus_wr_tlno_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_wr_tlno_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `rgt_lmit_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '등록제한여부',
  `bsc_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_wr_tlno_adm_00` (`tlano`,`tltno`,`tlsno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='불량전화번호관리';
