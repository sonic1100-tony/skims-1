--
-- Table structure for table `fin_crpca_ar`
--

DROP TABLE IF EXISTS `fin_crpca_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_ar` (
  `ardt` date NOT NULL COMMENT '연체일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `aramt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '연체금액',
  `ar_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체이자',
  `ar_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체합계금액',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ardt`,`crdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드연체';
