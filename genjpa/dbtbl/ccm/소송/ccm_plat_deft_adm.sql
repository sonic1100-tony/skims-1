--
-- Table structure for table `ccm_plat_deft_adm`
--

DROP TABLE IF EXISTS `ccm_plat_deft_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_plat_deft_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `plat_deft_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원고피고구분코드',
  `plat_deft_seqno` decimal(3,0) NOT NULL COMMENT '원고피고순번',
  `plat_deft_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고피고고객번호',
  `plat_defnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고피고명',
  `victm_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자관계코드',
  `tz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_plat_deft_adm_00` (`lw_rcp_yr`,`lw_sno`,`plat_deft_flgcd`,`plat_deft_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원고피고관리';
