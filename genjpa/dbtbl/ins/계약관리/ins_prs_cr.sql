--
-- Table structure for table `ins_prs_cr`
--

DROP TABLE IF EXISTS `ins_prs_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_prs_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prs_crcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대표차량코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `prs_crnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '대표차량명',
  `prdcp_brand_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제작사브랜드번호',
  `tag` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태그',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_prs_cr_00` (`prs_crcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=884 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대표차량';
