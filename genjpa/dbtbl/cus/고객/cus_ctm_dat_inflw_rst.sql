--
-- Table structure for table `cus_ctm_dat_inflw_rst`
--

DROP TABLE IF EXISTS `cus_ctm_dat_inflw_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_dat_inflw_rst` (
  `ctm_dat_inflw_reqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '고객데이터유입요청번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `ctm_dat_inflw_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객데이터유입결과코드',
  `ctm_dat_inflw_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객데이터유입경로코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctm_dat_inflw_reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객데이터유입결과';
