--
-- Table structure for table `lse_ltrm_ibnr_rk_prm`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_rk_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_rk_prm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보종류코드',
  `rn_rk_rnprm` decimal(17,2) NOT NULL COMMENT '원수위험경과보험료',
  `re_rk_rnd_prm` decimal(17,2) NOT NULL COMMENT '출재위험경과보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_ibnr_rk_prm_00` (`cls_yymm`,`ibnr_cvr_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR위험보험료';
