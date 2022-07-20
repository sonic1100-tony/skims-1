--
-- Table structure for table `str_bz_pl_knd`
--

DROP TABLE IF EXISTS `str_bz_pl_knd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bz_pl_knd` (
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `bz_plnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획명',
  `bz_pl_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업계획설명',
  `mng_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '주관기관코드',
  `bz_pl_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업계획종류구분코드',
  `wrt_cyc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성주기',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '사용여부',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_plcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획종류';
