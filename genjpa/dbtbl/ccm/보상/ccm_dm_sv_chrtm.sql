--
-- Table structure for table `ccm_dm_sv_chrtm`
--

DROP TABLE IF EXISTS `ccm_dm_sv_chrtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_sv_chrtm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `chrct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인물구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ctqno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격증번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_sv_chrtm_00` (`tm_orgcd`,`stfno`,`chrct_flgcd`,`ap_nddt`,`ap_strdt`),
  KEY `idx_ccm_dm_sv_chrtm_10` (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정인담당팀';
