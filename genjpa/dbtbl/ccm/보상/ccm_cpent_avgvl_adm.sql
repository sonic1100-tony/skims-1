--
-- Table structure for table `ccm_cpent_avgvl_adm`
--

DROP TABLE IF EXISTS `ccm_cpent_avgvl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cpent_avgvl_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cprt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `rdr_avg_mdcf` decimal(15,0) NOT NULL COMMENT '경상평균치료비',
  `rdr_hsp_rt` decimal(5,2) NOT NULL COMMENT '경상입원율',
  `avg_hsp_days` decimal(5,2) NOT NULL COMMENT '평균입원일수',
  `avg_otp_days` decimal(5,2) NOT NULL COMMENT '평균통원일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cpent_avgvl_adm_00` (`cprt_entp_ctmno`,`cprt_entp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체평균값관리';
