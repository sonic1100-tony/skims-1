--
-- Table structure for table `ins_rins_cr_adm_rel`
--

DROP TABLE IF EXISTS `ins_rins_cr_adm_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_cr_adm_rel` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금액발생단위번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rins_cr_admno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약관리번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_cr_adm_rel_00` (`amt_cr_untno`,`ptccd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험계약집계관계';
