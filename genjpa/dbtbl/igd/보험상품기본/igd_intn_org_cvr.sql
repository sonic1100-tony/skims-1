--
-- Table structure for table `igd_intn_org_cvr`
--

DROP TABLE IF EXISTS `igd_intn_org_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_intn_org_cvr` (
  `intn_org_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관유형코드',
  `cr_clm_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고담보구분코드',
  `intn_org_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관담보코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `intn_org_cvrnm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관담보명',
  `intn_org_pst_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관과거담보코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`intn_org_tpcd`,`cr_clm_cvr_flgcd`,`intn_org_cvrcd`,`ins_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대외기관담보';
