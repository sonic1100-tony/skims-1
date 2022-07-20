--
-- Table structure for table `fin_fd_dlrpt`
--

DROP TABLE IF EXISTS `fin_fd_dlrpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fd_dlrpt` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `fd_dlrpt_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금일보항목구분코드',
  `bfdy_amt` decimal(15,0) DEFAULT NULL COMMENT '전일금액',
  `crtdd_plamt` decimal(15,0) DEFAULT NULL COMMENT '당일계획금액',
  `no1_amt` decimal(15,0) DEFAULT NULL COMMENT '1번금액',
  `no2_amt` decimal(15,0) DEFAULT NULL COMMENT '2번금액',
  `dcndt` date DEFAULT NULL COMMENT '확정일자',
  `dcn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정직원번호',
  `prv_reqdt` date DEFAULT NULL COMMENT '결재요청일자',
  `prv_rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재요청직원번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `no1_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번메모내용',
  `no2_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번메모내용',
  `no3_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번메모내용',
  `no4_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번메모내용',
  `no5_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5번메모내용',
  `no6_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '6번메모내용',
  `no7_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '7번메모내용',
  `no8_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '8번메모내용',
  `no9_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '9번메모내용',
  `no10_memo_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10번메모내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`fd_dlrpt_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자금일보';
