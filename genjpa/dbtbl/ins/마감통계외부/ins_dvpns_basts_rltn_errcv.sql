--
-- Table structure for table `ins_dvpns_basts_rltn_errcv`
--

DROP TABLE IF EXISTS `ins_dvpns_basts_rltn_errcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_basts_rltn_errcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_rcvdt` date NOT NULL COMMENT '자료수신일자',
  `admno` decimal(6,0) NOT NULL COMMENT '관리번호',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보종코드',
  `cr_yr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계약년도',
  `dvpns_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원계약번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `thcp_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사상품코드',
  `cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_basts_rltn_errcv_00` (`da_rcvdt`,`admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원기초통계연계오류수신';
