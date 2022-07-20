--
-- Table structure for table `ins_crcr_udrtk_atr`
--

DROP TABLE IF EXISTS `ins_crcr_udrtk_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crcr_udrtk_atr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `cr_udrtk_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차인수속성코드',
  `cr_udrtk_atrvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차인수속성값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_ins_crcr_udrtk_atr_01` (`rsno`,`carno`,`cr_udrtk_atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=10313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차계약인수속성';
