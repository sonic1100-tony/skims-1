--
-- Table structure for table `fin_shinbn_rltn`
--

DROP TABLE IF EXISTS `fin_shinbn_rltn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_shinbn_rltn` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `spdlg_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전문거래시간',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bk_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '은행계좌번호',
  `tlm_rcv_sno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '전문수신일련번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래구분코드',
  `woamt` decimal(15,0) DEFAULT NULL COMMENT '원화금액',
  `fcamt` decimal(17,2) DEFAULT NULL COMMENT '외화금액',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `hdcft_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수기입력여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`spdlg_hms`,`bkcd`,`bk_actno`,`tlm_rcv_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신한인사이드뱅킹연계';
