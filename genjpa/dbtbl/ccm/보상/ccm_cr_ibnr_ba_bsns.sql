--
-- Table structure for table `ccm_cr_ibnr_ba_bsns`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_ba_bsns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_ba_bsns` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `rn_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수개별추산금액',
  `re_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재개별추산금액',
  `idm_bnamt` decimal(15,0) DEFAULT NULL COMMENT '구상채권금액',
  `rn_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '원수경과보험료',
  `re_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '출재경과보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_ba_bsns_00` (`cls_yymm`,`ibnr_cr_cvr_flgcd`,`ibnr_cls_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR기초업무';
