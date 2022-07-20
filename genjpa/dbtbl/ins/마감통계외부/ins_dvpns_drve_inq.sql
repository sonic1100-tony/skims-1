--
-- Table structure for table `ins_dvpns_drve_inq`
--

DROP TABLE IF EXISTS `ins_dvpns_drve_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_drve_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dvpns_rcpno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원접수번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민등록번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `armcl_cd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '군별코드',
  `spsk_cd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특기코드',
  `spsk_cdnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특기코드명',
  `strdt` date DEFAULT NULL COMMENT '시작일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_drve_inq_00` (`dvpns_rcpno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원군운전경력조회';
