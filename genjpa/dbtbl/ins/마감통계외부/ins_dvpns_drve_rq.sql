--
-- Table structure for table `ins_dvpns_drve_rq`
--

DROP TABLE IF EXISTS `ins_dvpns_drve_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_drve_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자명',
  `dvpns_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원접수번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_drve_rq_00` (`rcpdt`,`rsno`,`nrdnm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원군운전경력요청';
