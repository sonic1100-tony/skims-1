--
-- Table structure for table `com_prv_crr`
--

DROP TABLE IF EXISTS `com_prv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_prv_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무중분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `prv_info_seqno` decimal(5,0) NOT NULL COMMENT '결재정보순번',
  `prv_crr_seqno` decimal(5,0) NOT NULL COMMENT '결재이력순번',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `cmn_prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공통결재상태코드',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_prv_crr_00` (`bsns_lclcd`,`bsns_mdccd`,`stfno`,`prv_info_seqno`,`prv_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재이력';
