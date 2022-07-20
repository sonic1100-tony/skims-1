--
-- Table structure for table `fin_crpca_rq_dtspc`
--

DROP TABLE IF EXISTS `fin_crpca_rq_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_rq_dtspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crpca_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드관리번호',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `crp_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드번호',
  `crpca_usrnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드사용자명',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인번호',
  `apamt` decimal(15,0) DEFAULT NULL COMMENT '승인금액',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체명',
  `wrtdt` date DEFAULT NULL COMMENT '작성일자',
  `tx_ckamt` decimal(18,0) DEFAULT NULL COMMENT '세금계산서금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crpca_rq_dtspc_00` (`crpca_admno`,`rq_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드신청상세내역';
