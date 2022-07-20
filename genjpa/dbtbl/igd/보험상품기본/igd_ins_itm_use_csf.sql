--
-- Table structure for table `igd_ins_itm_use_csf`
--

DROP TABLE IF EXISTS `igd_ins_itm_use_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ins_itm_use_csf` (
  `ins_itm_csf_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류용도코드',
  `ins_itm_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류코드',
  `ppr_ins_itm_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위보험종목분류코드',
  `ins_itm_csfnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류명',
  `ins_itm_csf_lvl` decimal(1,0) NOT NULL COMMENT '보험종목분류레벨',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종레벨여부',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `intn_org_ikd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관보종분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_itm_csf_usecd`,`ins_itm_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험종목용도별분류';
