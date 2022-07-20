--
-- Table structure for table `str_bdg_xc_lm`
--

DROP TABLE IF EXISTS `str_bdg_xc_lm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_xc_lm` (
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `rr_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관실체구분코드',
  `bdg_ctl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산통제구분코드',
  `lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '한도금액',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bdg_orgcd`,`ntacc_cd`,`rr_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산집행한도';
