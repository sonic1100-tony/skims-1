--
-- Table structure for table `fin_lq_asmt_xc`
--

DROP TABLE IF EXISTS `fin_lq_asmt_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_asmt_xc` (
  `lq_asmt_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산지정번호',
  `lqdt` date NOT NULL COMMENT '청산일자',
  `lq_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산기관코드',
  `lq_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산정산번호',
  `lq_xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산정산금액구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lq_asmt_no`,`lqdt`,`lq_orgcd`,`lq_xcno`),
  KEY `idx_fin_lq_asmt_xc_10` (`lqdt`,`lq_xcno`,`lq_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산지정정산';
