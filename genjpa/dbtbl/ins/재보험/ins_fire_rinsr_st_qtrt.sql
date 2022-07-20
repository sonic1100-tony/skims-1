--
-- Table structure for table `ins_fire_rinsr_st_qtrt`
--

DROP TABLE IF EXISTS `ins_fire_rinsr_st_qtrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fire_rinsr_st_qtrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '특약년월',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재유형코드',
  `xol_trtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL특약코드',
  `xol_or_lyr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL/LAYER구분코드',
  `re_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재경유처구분코드',
  `pstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경유처코드',
  `rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자코드',
  `rert` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출재율',
  `cmrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '수수료율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_fire_rinsr_st_qtrt_00` (`trt_yymm`,`re_flgcd`,`re_tpcd`,`xol_trtcd`,`xol_or_lyr_flgcd`,`re_pstrp_flgcd`,`pstcd`,`rincd`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화특재보험자기준지분율';
