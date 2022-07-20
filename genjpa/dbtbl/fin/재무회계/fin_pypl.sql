--
-- Table structure for table `fin_pypl`
--

DROP TABLE IF EXISTS `fin_pypl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pypl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `pylno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처명',
  `pypl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_pypl_00` (`pylno`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급처';
