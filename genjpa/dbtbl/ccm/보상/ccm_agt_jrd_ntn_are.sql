--
-- Table structure for table `ccm_agt_jrd_ntn_are`
--

DROP TABLE IF EXISTS `ccm_agt_jrd_ntn_are`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_agt_jrd_ntn_are` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `agt_jrd_ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '에이전트관할국가코드',
  `agt_jrd_arecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '에이전트관할지역코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_agt_jrd_ntn_are_00` (`ctmno`,`cprt_entp_seqno`,`agt_jrd_ntncd`,`agt_jrd_arecd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='에이전트관할국가지역';
