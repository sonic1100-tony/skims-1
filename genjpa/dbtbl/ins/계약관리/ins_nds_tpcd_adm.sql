--
-- Table structure for table `ins_nds_tpcd_adm`
--

DROP TABLE IF EXISTS `ins_nds_tpcd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nds_tpcd_adm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효여부',
  `nds_tp_adm_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형관리구분코드',
  `nds_tp_gpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형그룹코드',
  `nds_ap_gd_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서적용상품구분코드',
  `sng_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '단독배서여부',
  `nds_efct_apdt_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서효력적용일자구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_nds_tpcd_adm_00` (`nds_tpcd`,`ndscd`,`vald_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배서유형코드관리';
