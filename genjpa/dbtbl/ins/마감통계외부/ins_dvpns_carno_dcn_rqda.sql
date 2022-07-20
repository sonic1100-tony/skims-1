--
-- Table structure for table `ins_dvpns_carno_dcn_rqda`
--

DROP TABLE IF EXISTS `ins_dvpns_carno_dcn_rqda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_carno_dcn_rqda` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_rcvdt` date NOT NULL COMMENT '자료수신일자',
  `da_rcv_seqno` decimal(5,0) NOT NULL COMMENT '자료수신순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보종코드',
  `cr_yr` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약년도',
  `dvpns_crano` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원계약번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `cr_dbcr_flg_inqcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대구분조회코드',
  `cr_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대번호',
  `dvpns_rgt_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원등록차량번호',
  `rgt_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록소유자명',
  `rgt_carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록차명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_carno_dcn_rqda_00` (`da_rcvdt`,`da_rcv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원차량번호확정요청자료';
