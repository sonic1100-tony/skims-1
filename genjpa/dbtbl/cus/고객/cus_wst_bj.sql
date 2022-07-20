--
-- Table structure for table `cus_wst_bj`
--

DROP TABLE IF EXISTS `cus_wst_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_wst_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `wst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '폐기구분코드',
  `wst_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '폐기여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_wst_bj_00` (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객폐기대상';
