--
-- Table structure for table `ins_tx_cc_sp`
--

DROP TABLE IF EXISTS `ins_tx_cc_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tx_cc_sp` (
  `py_bjno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상번호',
  `tx_cc_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세금산출항목코드',
  `cr_bj_strdt` date NOT NULL COMMENT '발생대상시작일자',
  `cr_bj_nddt` date NOT NULL COMMENT '발생대상종료일자',
  `tx_stamt` decimal(15,0) DEFAULT NULL COMMENT '과세표준금액',
  `txrt` decimal(12,6) DEFAULT NULL COMMENT '세율',
  `tx_ccamt` decimal(15,0) DEFAULT NULL COMMENT '세금산출금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`py_bjno`,`tx_cc_itcd`,`cr_bj_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='세금산출내역';
