--
-- Table structure for table `lse_lsetm_bsns_rule_adm`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_rule_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_rule_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lsetm_gp_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '손사그룹ID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `lsetm_bsns_1_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무1값',
  `lsetm_bsns_2_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무2값',
  `lsetm_bsns_3_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무3값',
  `lsetm_bsns_4_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무4값',
  `lsetm_bsns_5_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무5값',
  `lsetm_bsns_6_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무6값',
  `lsetm_bsns_7_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무7값',
  `lsetm_bsns_8_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무8값',
  `lsetm_bsns_9_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무9값',
  `lsetm_bsns_10_vl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무10값',
  `lsetm_bsns_1_nm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사업무1명',
  `lsetm_bsns_2_nm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사업무2명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_lse_lsetm_bsns_rule_adm_11` (`lsetm_bsns_1_vl`),
  KEY `idx_lse_lsetm_bsns_rule_adm_10` (`lsetm_gp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24821 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무규칙관리';
