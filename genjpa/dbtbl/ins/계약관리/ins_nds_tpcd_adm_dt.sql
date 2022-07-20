--
-- Table structure for table `ins_nds_tpcd_adm_dt`
--

DROP TABLE IF EXISTS `ins_nds_tpcd_adm_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nds_tpcd_adm_dt` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `nds_dt_adm_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '배서상세관리구분코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `nds_ap_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서적용상품코드',
  `sync_av_ndscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동시가능배서코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_nds_tpcd_adm_dt_00` (`nds_tpcd`,`ndscd`,`vald_strdt`,`nds_dt_adm_flgcd`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배서유형코드관리상세';
