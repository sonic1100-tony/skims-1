--
-- Table structure for table `ins_carg_ntn`
--

DROP TABLE IF EXISTS `ins_carg_ntn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_carg_ntn` (
  `carg_ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '적하국가코드',
  `carg_ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적하국가명',
  `hngl_ntnnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글국가명',
  `dvpns_carg_ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원적하국가코드',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`carg_ntncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적하국가';
