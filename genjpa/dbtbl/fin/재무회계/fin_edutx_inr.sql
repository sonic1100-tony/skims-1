--
-- Table structure for table `fin_edutx_inr`
--

DROP TABLE IF EXISTS `fin_edutx_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_edutx_inr` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `edutx_cc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '교육세산출구분코드',
  `edutx_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '교육세양식코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `edutx_itcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '교육세항목코드',
  `bf_qnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전분기말금액',
  `cmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월금액',
  `diamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차액금액',
  `tx_xcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과세제외금액',
  `pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수익금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`edutx_cc_flgcd`,`edutx_frmcd`,`form_seq`,`edutx_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='교육세통합';
