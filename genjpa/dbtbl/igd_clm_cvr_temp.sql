--
-- Table structure for table `igd_clm_cvr_temp`
--

DROP TABLE IF EXISTS `igd_clm_cvr_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_clm_cvr_temp` (
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `clm_cvrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보명',
  `clm_cvr_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보설명',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `nlisr_asso_giant_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손보협회자이언츠구분코드',
  `hspcs_dc_days` decimal(5,0) DEFAULT NULL COMMENT '입원비공제일수',
  `clm_cvr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보유형코드',
  `trfac_cs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통사고비용구분코드',
  `clm_dcsn_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고판단기준코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보';
