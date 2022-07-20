--
-- Table structure for table `ins_cr_apl_ud_adm`
--

DROP TABLE IF EXISTS `ins_cr_apl_ud_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_apl_ud_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사구분코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사용인번호',
  `ud_dthms` datetime NOT NULL COMMENT '심사일시',
  `ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과코드',
  `ud_rstnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과명',
  `udwr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_apl_ud_adm_00` (`ud_flgcd`,`dh_orgcd`,`dh_stfno`,`usrno`,`ud_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차청약심사관리';
