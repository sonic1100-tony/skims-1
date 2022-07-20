--
-- Table structure for table `fin_edutx_cc`
--

DROP TABLE IF EXISTS `fin_edutx_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_edutx_cc` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `edutx_cc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '교육세산출구분코드',
  `admcs_tp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관리비유형구분코드',
  `txrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '세율',
  `tx_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과세표준금액',
  `edutx_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '교육세액',
  `prv_pvl_edu_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기계상교육세액',
  `cm_pvl_edu_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월계상교육세액',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`edutx_cc_flgcd`,`admcs_tp_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='교육세산출';
