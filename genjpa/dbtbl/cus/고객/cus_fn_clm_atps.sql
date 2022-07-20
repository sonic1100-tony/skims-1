--
-- Table structure for table `cus_fn_clm_atps`
--

DROP TABLE IF EXISTS `cus_fn_clm_atps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fn_clm_atps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `cncdt` date NOT NULL COMMENT '해제일자',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화지역번호',
  `hp_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화국번',
  `hp_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화일련번호',
  `rgt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유코드',
  `cnc_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제사유코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `atps_rcp_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유의자접수경로코드',
  `fn_clm_atps_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융사고유의자유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fn_clm_atps_00` (`rsno`,`rgtdt`,`cncdt`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융사고유의자';
