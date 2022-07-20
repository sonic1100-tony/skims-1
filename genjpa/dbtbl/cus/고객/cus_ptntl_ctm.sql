--
-- Table structure for table `cus_ptntl_ctm`
--

DROP TABLE IF EXISTS `cus_ptntl_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ptntl_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ptntl_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '잠재고객번호',
  `bzfml_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업가족직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ptntl_ctm_00` (`stfno`,`ptntl_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='잠재고객';
