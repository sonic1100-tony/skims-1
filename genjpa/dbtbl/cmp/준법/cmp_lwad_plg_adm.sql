--
-- Table structure for table `cmp_lwad_plg_adm`
--

DROP TABLE IF EXISTS `cmp_lwad_plg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_lwad_plg_adm` (
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `lwad_plg_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법서약업무구분코드',
  `psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소속기관코드',
  `plg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서약여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bj_yymm`,`stfno`,`lwad_plg_bsns_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법서약관리';
