--
-- Table structure for table `ins_safe_dgn_rptg_obst_clim`
--

DROP TABLE IF EXISTS `ins_safe_dgn_rptg_obst_clim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_safe_dgn_rptg_obst_clim` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `obst_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관측소명',
  `obst_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관측소일련번호',
  `st_strdt` date DEFAULT NULL COMMENT '기준시작일자',
  `st_nddt` date DEFAULT NULL COMMENT '기준종료일자',
  `avg_hg_tmpr` decimal(7,2) DEFAULT NULL COMMENT '평균최고온도',
  `avg_lowt_tmpr` decimal(7,2) DEFAULT NULL COMMENT '평균최저온도',
  `hg_tmpr` decimal(7,2) DEFAULT NULL COMMENT '최고온도',
  `lowt_tmpr` decimal(7,2) DEFAULT NULL COMMENT '최저온도',
  `mx_wind_speed` decimal(7,2) DEFAULT NULL COMMENT '최대바람속도',
  `mx_mmt_wind_speed` decimal(7,2) DEFAULT NULL COMMENT '최대순간바람속도',
  `mx_dy1_rain_qnty` decimal(7,2) DEFAULT NULL COMMENT '최대1일강우량',
  `mx_1_hms_rain_qnty` decimal(7,2) DEFAULT NULL COMMENT '최대1시간강우량',
  `mx_10_min_rain_qnty` decimal(7,2) DEFAULT NULL COMMENT '최대10분강우량',
  `mx_dy1_snow_qnty` decimal(7,2) DEFAULT NULL COMMENT '최대1일눈량',
  `mx_snow_qnty` decimal(7,2) DEFAULT NULL COMMENT '최대눈량',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_safe_dgn_rptg_obst_clim_00` (`obst_nm`,`obst_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='안전진단보고서관측소기후';
