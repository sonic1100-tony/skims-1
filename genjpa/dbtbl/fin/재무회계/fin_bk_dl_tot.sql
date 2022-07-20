--
-- Table structure for table `fin_bk_dl_tot`
--

DROP TABLE IF EXISTS `fin_bk_dl_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bk_dl_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `dl_spc_ct` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래내역건수',
  `amg_actct` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가상계좌건수',
  `imtmc_ct` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '즉시집금건수',
  `rvbk_tfct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당행이체건수',
  `otbk_tfct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '타행이체건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bk_dl_tot_00` (`st_yymm`,`bkcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='은행거래집계';
