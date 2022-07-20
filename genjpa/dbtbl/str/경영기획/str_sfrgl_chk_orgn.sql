--
-- Table structure for table `str_sfrgl_chk_orgn`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_orgn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_orgn` (
  `sfrgl_domn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제영역분류코드',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `prv_dlg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재위임직원번호',
  `prv_dlg_strdt` date DEFAULT NULL COMMENT '결재위임시작일자',
  `prv_dlg_nddt` date DEFAULT NULL COMMENT '결재위임종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`sfrgl_domn_csfcd`,`chk_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검조직';
