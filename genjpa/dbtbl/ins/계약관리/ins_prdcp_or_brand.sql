--
-- Table structure for table `ins_prdcp_or_brand`
--

DROP TABLE IF EXISTS `ins_prdcp_or_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_prdcp_or_brand` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prdcp_brand_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제작사브랜드번호',
  `prdcp_brand_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제작사브랜드구분코드',
  `prdcp_brand_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '제작사브랜드명',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `foma_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외산여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_prdcp_or_brand_00` (`prdcp_brand_no`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제작사/브랜드';
