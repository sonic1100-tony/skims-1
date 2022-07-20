--
-- Table structure for table `ins_rins_rert`
--

DROP TABLE IF EXISTS `ins_rins_rert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_rert` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rert_ap_unt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재율적용단위구분코드',
  `rert_apno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재율적용번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `re_or_psrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출재/보유율',
  `plcg_or_recpc_rert` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT 'PLACINGOR재출출재율',
  `re_cmrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출재수수료율',
  `pft_cmrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '이익수수료율',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `rk_psrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '단계보유율',
  `brkag_cmrt` decimal(12,6) DEFAULT NULL COMMENT '중개수수료율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_rert_00` (`rert_ap_unt_flgcd`,`rert_apno`,`ptccd`)
) ENGINE=InnoDB AUTO_INCREMENT=106903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험출재율';
