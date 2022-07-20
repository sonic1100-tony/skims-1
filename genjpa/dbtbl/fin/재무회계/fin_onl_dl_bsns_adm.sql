--
-- Table structure for table `fin_onl_dl_bsns_adm`
--

DROP TABLE IF EXISTS `fin_onl_dl_bsns_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_onl_dl_bsns_adm` (
  `tlm_unt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문단위업무구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `onl_dlbs_av_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '온라인거래업무가능여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tlm_unt_bsns_flgcd`,`bkcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='온라인거래업무관리';
