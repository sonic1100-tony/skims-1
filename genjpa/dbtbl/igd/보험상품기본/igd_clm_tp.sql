--
-- Table structure for table `igd_clm_tp`
--

DROP TABLE IF EXISTS `igd_clm_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_clm_tp` (
  `clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고유형코드',
  `clm_tpnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '사고유형명',
  `clm_tp_csf_lvl` decimal(1,0) NOT NULL COMMENT '사고유형분류레벨',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종레벨여부',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `clm_nv_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사분류코드',
  `ppr_clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위사고유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`clm_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고유형';
