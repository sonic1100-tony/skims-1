--
-- Table structure for table `fin_rv_etdl_dl_spc`
--

DROP TABLE IF EXISTS `fin_rv_etdl_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_etdl_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rv_sbno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수납대기번호',
  `rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청구분코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `adm_ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관리원장종류코드',
  `et_dl_rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타처리요청금액',
  `nots` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rv_etdl_dl_spc_00` (`rv_sbno`,`rq_flgcd`,`ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납기타처리처리내역';
