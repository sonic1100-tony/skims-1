--
-- Table structure for table `lse_risp_org_inspt_stf`
--

DROP TABLE IF EXISTS `lse_risp_org_inspt_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_risp_org_inspt_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `risp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수검기관코드',
  `spvsn_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리구분코드',
  `spvsn_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부구분코드',
  `spvsn_inspt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '감리점검자직원번호',
  `spvsn_inspt_stf_psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '감리점검자직원소속기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_risp_org_inspt_stf_00` (`risp_orgcd`,`spvsn_flg_cd`,`spvsn_dt_flgcd`,`spvsn_inspt_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수검기관점검직원';
