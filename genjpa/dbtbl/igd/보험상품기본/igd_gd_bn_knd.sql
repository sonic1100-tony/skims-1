--
-- Table structure for table `igd_gd_bn_knd`
--

DROP TABLE IF EXISTS `igd_gd_bn_knd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_bn_knd` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `oj_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물유형코드',
  `oj_tp_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물유형분류코드',
  `obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '물건구분코드',
  `is_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입유형코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `bn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`rk_tpcd`,`oj_tpcd`,`oj_tp_csfcd`,`obj_flgcd`,`is_tpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품업종분류';
