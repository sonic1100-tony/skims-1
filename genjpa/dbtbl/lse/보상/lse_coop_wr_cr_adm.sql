--
-- Table structure for table `lse_coop_wr_cr_adm`
--

DROP TABLE IF EXISTS `lse_coop_wr_cr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_coop_wr_cr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `clmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사고자명',
  `wr_adm_dep_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '불량관리부서구분코드',
  `wr_cr_adm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '불량계약관리구분코드',
  `dhtrb_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급처기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `wr_cr_lsetm_crpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불량계약손사법인명',
  `wr_cr_note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불량계약비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_coop_wr_cr_adm_00` (`plyno`,`ctm_dscno`,`clmnm`,`wr_adm_dep_flgcd`,`wr_cr_adm_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제휴불량계약관리';
