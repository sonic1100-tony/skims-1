--
-- Table structure for table `ccm_lw_bsamt_spc`
--

DROP TABLE IF EXISTS `ccm_lw_bsamt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_bsamt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송업무구분코드',
  `dm_lwamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구소송가액',
  `py_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급기준액',
  `jg_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '판결원금',
  `dlay_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지연이자금액',
  `jg_piamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '판결원리금액',
  `ruamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '감액',
  `pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급액',
  `emamt_cmp_wsurt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '청구금액대비승소율',
  `xp_jgamt_cmp_wsurt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '예상판결액대비승소율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_bsamt_spc_00` (`lw_prg_sno`,`lw_bsns_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송업무금액내역';
