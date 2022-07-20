--
-- Table structure for table `com_prv_info`
--

DROP TABLE IF EXISTS `com_prv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_prv_info` (
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무중분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `prv_info_seqno` decimal(5,0) NOT NULL COMMENT '결재정보순번',
  `prv_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무코드',
  `bsns_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무KEY',
  `bsns_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무정보',
  `prv_nd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '결재종료여부',
  `prv_crt_flg` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재생성구분',
  `prv_nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재종료구분코드',
  `prv_reqdt` date DEFAULT NULL COMMENT '결재요청일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bsns_lclcd`,`bsns_mdccd`,`stfno`,`prv_info_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재정보';
