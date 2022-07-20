--
-- Table structure for table `sec_ctl_dep_chk_rst_dt`
--

DROP TABLE IF EXISTS `sec_ctl_dep_chk_rst_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_ctl_dep_chk_rst_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `chk_rst_adm_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '점검결과관리단위코드',
  `psinf_chk_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보점검결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_ctl_dep_chk_rst_dt_00` (`st_yymm`,`chk_rst_adm_untcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통제부서점검결과상세';
