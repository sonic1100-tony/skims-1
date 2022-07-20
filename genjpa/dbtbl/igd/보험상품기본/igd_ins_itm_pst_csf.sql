--
-- Table structure for table `igd_ins_itm_pst_csf`
--

DROP TABLE IF EXISTS `igd_ins_itm_pst_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ins_itm_pst_csf` (
  `ins_itm_csf_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류용도코드',
  `ins_itm_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_itm_csf_usecd`,`ins_itm_csfcd`,`ins_imcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험종목소속분류';
