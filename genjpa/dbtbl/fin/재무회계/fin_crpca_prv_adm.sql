--
-- Table structure for table `fin_crpca_prv_adm`
--

DROP TABLE IF EXISTS `fin_crpca_prv_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_prv_adm` (
  `crpca_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드관리번호',
  `crpca_prv_prgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드결재진행코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `afprv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후결여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crpca_admno`,`crpca_prv_prgcd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드결재관리';
