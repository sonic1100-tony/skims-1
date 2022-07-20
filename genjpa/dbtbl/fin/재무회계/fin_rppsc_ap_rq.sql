--
-- Table structure for table `fin_rppsc_ap_rq`
--

DROP TABLE IF EXISTS `fin_rppsc_ap_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rppsc_ap_rq` (
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqsno` decimal(10,0) NOT NULL COMMENT '요청순번',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rppsc_ap_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '책임자승인업무구분코드',
  `py_crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장번호',
  `sep_amt` decimal(15,0) DEFAULT NULL COMMENT '분할금액',
  `sep_dt` date DEFAULT NULL COMMENT '분할일자',
  `ap_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인관리번호',
  `rppsc_ap_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '책임자승인상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqdt`,`rqsno`),
  KEY `idx_fin_rppsc_ap_rq_11` (`py_crno`),
  KEY `idx_fin_rppsc_ap_rq_12` (`ldgno`,`rppsc_ap_stcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='책임자승인요청';
