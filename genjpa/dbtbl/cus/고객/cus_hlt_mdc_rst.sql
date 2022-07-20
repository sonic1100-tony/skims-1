--
-- Table structure for table `cus_hlt_mdc_rst`
--

DROP TABLE IF EXISTS `cus_hlt_mdc_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_hlt_mdc_rst` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `mdcdt` date NOT NULL COMMENT '검진일자',
  `mdc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '검진종류코드',
  `mdc_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진병원명',
  `mdc_orgcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진기관코드',
  `opn_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소견내용',
  `jg_rst_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판정결과내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`mdcdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건강검진결과';
