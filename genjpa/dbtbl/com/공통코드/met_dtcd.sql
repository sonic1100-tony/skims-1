--
-- Table structure for table `met_dtcd`
--

DROP TABLE IF EXISTS `met_dtcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_dtcd` (
  `csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드',
  `dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세부코드',
  `ppr_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위세부코드',
  `dtcnm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '세부코드명',
  `dtcd_ennm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부코드영문명',
  `dtcd_xpnm` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부코드설명',
  `dtcd_lvl` decimal(2,0) NOT NULL DEFAULT '1' COMMENT '세부코드레벨',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `numvl` decimal(20,5) DEFAULT NULL COMMENT '숫자값',
  `num_unt` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '숫자단위',
  `mn_numvl` decimal(20,5) DEFAULT NULL COMMENT '최소숫자값',
  `mx_numvl` decimal(20,5) DEFAULT NULL COMMENT '최대숫자값',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`csfcd`,`dtcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='세부코드';
