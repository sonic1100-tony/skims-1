--
-- Table structure for table `lse_lsettm_cpent`
--

DROP TABLE IF EXISTS `lse_lsettm_cpent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsettm_cpent` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cpent_mdrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '협력업체조정율',
  `cpent_rqrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '협력업체의뢰율',
  `cpent_pndct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '협력업체미결건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`cprt_entp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사협력업체';
