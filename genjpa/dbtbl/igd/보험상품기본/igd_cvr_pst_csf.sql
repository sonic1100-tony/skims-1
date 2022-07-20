--
-- Table structure for table `igd_cvr_pst_csf`
--

DROP TABLE IF EXISTS `igd_cvr_pst_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cvr_pst_csf` (
  `cvr_csf_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류용도코드',
  `cvr_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류코드',
  `cr_clm_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고담보구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvr_csf_usecd`,`cvr_csfcd`,`cr_clm_cvr_flgcd`,`cvrcd`,`ap_nddt`,`ap_strdt`),
  KEY `idx_igd_cvr_pst_csf_01` (`cvr_csfcd`,`cvrcd`),
  KEY `idx_igd_cvr_pst_csf_10` (`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보소속분류';
