--
-- Table structure for table `str_bzpl_av_tot`
--

DROP TABLE IF EXISTS `str_bzpl_av_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzpl_av_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `acc_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계정실체구분코드',
  `fsvs_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금감원계정과목코드',
  `bzpl_avamt` decimal(18,0) NOT NULL DEFAULT '0' COMMENT '사업계획실적금액',
  `av_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '실적비율',
  `rflt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '반영여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzpl_av_tot_00` (`st_yymm`,`acc_ntty_flgcd`,`fsvs_ntacc_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획실적집계';
