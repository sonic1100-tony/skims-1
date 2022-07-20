--
-- Table structure for table `ins_rins_rk_ndx_cc`
--

DROP TABLE IF EXISTS `ins_rins_rk_ndx_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_rk_ndx_cc` (
  `cc_admno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '산출관리번호',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `dgn_udno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단심사번호',
  `dgn_ndv_ud_seqno` decimal(5,0) DEFAULT NULL COMMENT '진단개별심사순번',
  `requ_seqno` decimal(5,0) DEFAULT NULL COMMENT '의뢰순번',
  `vis_mdcdt` date NOT NULL COMMENT '방문검진일자',
  `fnl_cc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종산출여부',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `ts_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송직원번호',
  `ts_dthms` datetime DEFAULT NULL COMMENT '전송일시',
  `ts_rst_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송결과값',
  `ts_rst_url_vl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송결과URL값',
  `ts_rst_url_key` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송결과URLKEY',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `xml_bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XML업무파일KEY',
  `pdf_bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'PDF업무파일KEY',
  `rk_ndx_cc_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험지수산출방법코드',
  `udw_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '언더라이팅결과코드',
  `fnl_udw_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종언더라이팅결과코드',
  `udwr_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사자의견',
  `rk_ndx_cc_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험지수산출세부코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cc_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험자위험지수산출';
