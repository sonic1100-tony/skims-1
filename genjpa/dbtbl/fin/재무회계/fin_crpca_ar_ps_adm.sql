--
-- Table structure for table `fin_crpca_ar_ps_adm`
--

DROP TABLE IF EXISTS `fin_crpca_ar_ps_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_ar_ps_adm` (
  `ardt` date NOT NULL COMMENT '연체일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `crdco_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드사구분코드',
  `psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소속기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `aramt` decimal(17,2) DEFAULT NULL COMMENT '연체금액',
  `ar_ct` decimal(5,0) DEFAULT NULL COMMENT '연체횟수',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `crpca_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드상태구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ardt`,`crdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드연체자관리';
