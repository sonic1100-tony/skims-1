--
-- Table structure for table `fin_dl_rq_pnt_dt`
--

DROP TABLE IF EXISTS `fin_dl_rq_pnt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_rq_pnt_dt` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `dlno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래번호',
  `lpnt_stm_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트결제수단코드',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출금액',
  `dl_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '거래포인트수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`lpnt_dl_flgcd`,`dlno`,`lpnt_stm_mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래요청포인트상세';
