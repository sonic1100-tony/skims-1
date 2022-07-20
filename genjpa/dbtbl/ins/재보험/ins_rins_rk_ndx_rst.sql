--
-- Table structure for table `ins_rins_rk_ndx_rst`
--

DROP TABLE IF EXISTS `ins_rins_rk_ndx_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_rk_ndx_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cc_admno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '산출관리번호',
  `udw_rst_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '언더라이팅결과유형코드',
  `cvr_csf_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류용도코드',
  `cvr_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류코드',
  `udw_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '언더라이팅결과코드',
  `dc_xc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증구분코드',
  `rk_ndx` decimal(12,6) DEFAULT NULL COMMENT '위험지수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_rk_ndx_rst_00` (`cc_admno`,`udw_rst_tpcd`,`cvr_csf_usecd`,`cvr_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험자위험지수결과';
