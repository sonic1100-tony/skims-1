--
-- Table structure for table `str_nprp_aw_cc_avtot`
--

DROP TABLE IF EXISTS `str_nprp_aw_cc_avtot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_aw_cc_avtot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `mdf_cvav` decimal(17,2) DEFAULT NULL COMMENT '수정환산실적',
  `fsti_cv_av` decimal(15,0) DEFAULT NULL COMMENT '초회환산실적',
  `mmcv_fsti_prm` decimal(15,0) DEFAULT NULL COMMENT '월납환산초회보험료',
  `rr_org_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관여부',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '집계여부',
  `rk_num` decimal(3,0) DEFAULT NULL COMMENT '단계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_nprp_aw_cc_avtot_00` (`st_yymm`,`orgcd`,`ins_imcd`,`sl_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례수당산출실적집계';
