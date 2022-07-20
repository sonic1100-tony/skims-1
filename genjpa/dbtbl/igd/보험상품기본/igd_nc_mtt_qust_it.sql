--
-- Table structure for table `igd_nc_mtt_qust_it`
--

DROP TABLE IF EXISTS `igd_nc_mtt_qust_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nc_mtt_qust_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `qust_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `qust_it_shtnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목단축명',
  `qust_it_dtnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목상세명',
  `qust_rpl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문답변유형코드',
  `dsas_it_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '질병항목여부',
  `bscrl_cmn_it_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '업계공통항목여부',
  `bscrl_cmn_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업계공통항목코드',
  `pst_scwnd_it_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과거상병항목여부',
  `hnd_it_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애항목여부',
  `comp_dsas_it_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중대질환항목여부',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `list_sourc_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목록소스분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2638 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알릴사항질문항목';
