--
-- Table structure for table `ins_rinsr_re`
--

DROP TABLE IF EXISTS `ins_rinsr_re`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rinsr_re` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rinsr_reno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자출재번호',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리번호',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `pst_rins_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경유재보험구분코드',
  `re_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재경유처구분코드',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산상대처코드',
  `krre_ppno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코리안리계상번호',
  `re_ts_dthms` datetime DEFAULT NULL COMMENT '출재전송일시',
  `lqdt` date DEFAULT NULL COMMENT '청산일자',
  `pst_brk_rinsr_reno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경유브로커재보험자출재번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rinsr_re_00` (`rinsr_reno`),
  KEY `idx_ins_rinsr_re_01` (`re_dlno`,`pst_rins_flgcd`,`brk_rincd`,`pst_brk_rinsr_reno`,`rinsr_reno`)
) ENGINE=InnoDB AUTO_INCREMENT=54083 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험자출재';
