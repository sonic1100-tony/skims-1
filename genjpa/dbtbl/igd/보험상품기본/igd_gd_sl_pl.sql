--
-- Table structure for table `igd_gd_sl_pl`
--

DROP TABLE IF EXISTS `igd_gd_sl_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_pl` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `pl_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜분류코드',
  `plnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜명',
  `scr_idc_ordr` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '화면표시순서',
  `sl_pl_op_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매플랜운용유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`plcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매플랜';
