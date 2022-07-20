--
-- Table structure for table `cmp_vl_chk_cd`
--

DROP TABLE IF EXISTS `cmp_vl_chk_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_vl_chk_cd` (
  `vl_chk_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가점검업무구분코드',
  `o1_vl_chk_csfvl` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '1차평가점검분류값',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `strdt` date NOT NULL COMMENT '시작일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인여부',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `it_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`vl_chk_bsns_flgcd`,`o1_vl_chk_csfvl`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='평가점검코드';
