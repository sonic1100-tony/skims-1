--
-- Table structure for table `lse_daly_av_cmkng`
--

DROP TABLE IF EXISTS `lse_daly_av_cmkng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_daly_av_cmkng` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmkng_bj_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '공지대상직원번호',
  `avtot_stdt` date NOT NULL COMMENT '실적집계기준일자',
  `mdamt_av_psncl_rank` decimal(7,0) DEFAULT NULL COMMENT '조정금액실적개인별순위',
  `mdamt_av_tmcl_rank` decimal(7,0) DEFAULT NULL COMMENT '조정금액실적팀별순위',
  `cm_dmgrt` decimal(12,6) DEFAULT NULL COMMENT '당월손해율',
  `accm_dmgrt` decimal(12,6) DEFAULT NULL COMMENT '누계손해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_daly_av_cmkng_00` (`cmkng_bj_stfno`,`avtot_stdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일일실적공지';
