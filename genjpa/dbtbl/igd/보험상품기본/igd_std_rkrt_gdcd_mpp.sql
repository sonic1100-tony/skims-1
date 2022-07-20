--
-- Table structure for table `igd_std_rkrt_gdcd_mpp`
--

DROP TABLE IF EXISTS `igd_std_rkrt_gdcd_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_std_rkrt_gdcd_mpp` (
  `gdcd_lvl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드레벨구분코드',
  `kko_gd_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카카오상품담보코드',
  `dvpns_gd_cvrcd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원상품담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `dvpns_gd_cvrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원상품담보명',
  `xcpt_itcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외항목코드',
  `xcpt_itvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외항목값',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd_lvl_flgcd`,`kko_gd_cvrcd`,`dvpns_gd_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='표준위험률상품코드매핑';
