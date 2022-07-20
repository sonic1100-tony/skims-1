--
-- Table structure for table `cus_cr_ta_stf`
--

DROP TABLE IF EXISTS `cus_cr_ta_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cr_ta_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `atch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전속구분코드',
  `rl_act_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실활동여부',
  `pss_ctmct` decimal(10,0) DEFAULT NULL COMMENT '가망고객수',
  `is_pl_ct` decimal(7,0) DEFAULT NULL COMMENT '가입설계건수',
  `info_met_atrt` decimal(7,2) DEFAULT NULL COMMENT '정보회의참석율',
  `dv_mpp_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배분매핑대상구분코드',
  `dpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수료여부',
  `mm3_avg_mpy_av_amt` decimal(17,2) DEFAULT NULL COMMENT '3개월평균월납실적금액',
  `dmgrt_rk_stf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해율위험직원여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cr_ta_stf_00` (`st_yymm`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객계약이관취급자';
