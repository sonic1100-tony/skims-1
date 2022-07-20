--
-- Table structure for table `gea_prv_auth`
--

DROP TABLE IF EXISTS `gea_prv_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prv_auth` (
  `bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무유형코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ppr_prv_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '상위결재직원번호',
  `prv_chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재담당자팀기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bsns_tpcd`,`stfno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재권한';
