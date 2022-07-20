--
-- Table structure for table `com_inorg_dcu_cnn_org`
--

DROP TABLE IF EXISTS `com_inorg_dcu_cnn_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inorg_dcu_cnn_org` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `inorg_dcu_bzpl_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관문서사업계획년도',
  `inorg_dcu_sno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관문서일련번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `main_org_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요기관여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_inorg_dcu_cnn_org_00` (`inorg_dcu_bzpl_yr`,`inorg_dcu_sno`,`orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대외기관문서관련기관';
