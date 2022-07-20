--
-- Table structure for table `fin_ntacc_fina_gp_mpp`
--

DROP TABLE IF EXISTS `fin_ntacc_fina_gp_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ntacc_fina_gp_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `fina_gp_mpp_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재무그룹매핑아이디',
  `befo_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '이전계정과목코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_fin_ntacc_fina_gp_mpp_01` (`fina_gp_mpp_id`,`befo_ntacc_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계정과목재무그룹매핑';
