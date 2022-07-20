--
-- Table structure for table `ccm_fds_snro_alarm_inr_rst`
--

DROP TABLE IF EXISTS `ccm_fds_snro_alarm_inr_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fds_snro_alarm_inr_rst` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `fds_snro_id` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'FDS시나리오ID',
  `dsc_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '식별ID',
  `fds_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'FDS기간구분코드',
  `fds_rk_grd` decimal(2,0) DEFAULT NULL COMMENT 'FDS위험등급',
  `fds_rk_rank` decimal(7,0) DEFAULT NULL COMMENT 'FDS위험순위',
  `mn_stvl` decimal(22,4) DEFAULT NULL COMMENT '최소기준값',
  `vl_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가항목명',
  `vl_vl` decimal(22,4) DEFAULT NULL COMMENT '평가값',
  `rst_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과항목명',
  `fds_rst_vl` decimal(22,4) DEFAULT NULL COMMENT 'FDS결과값',
  `dnmt_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분모항목명',
  `dnmt_vl` decimal(22,4) DEFAULT NULL COMMENT '분모값',
  `numr_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분자항목명',
  `numr_vl` decimal(22,4) DEFAULT NULL COMMENT '분자값',
  `entp_flgnm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체구분명',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `tot_avgvl` decimal(22,4) DEFAULT NULL COMMENT '전체평균값',
  `sd_avgvl` decimal(22,4) DEFAULT NULL COMMENT '시도평균값',
  `sgng_avgvl` decimal(22,4) DEFAULT NULL COMMENT '시군구평균값',
  `batch_load_dthms` datetime NOT NULL COMMENT '배치적재일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`fds_snro_id`,`dsc_id`),
  KEY `idx_ccm_fds_snro_alarm_inr_rst_10` (`fds_snro_id`,`dsc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FDS시나리오알람통합결과';
