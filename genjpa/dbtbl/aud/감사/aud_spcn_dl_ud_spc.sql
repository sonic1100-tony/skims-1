--
-- Table structure for table `aud_spcn_dl_ud_spc`
--

DROP TABLE IF EXISTS `aud_spcn_dl_ud_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_spcn_dl_ud_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력시간',
  `o1_spcn_dl_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차혐의거래결과구분코드',
  `o2_spcn_dl_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차혐의거래결과구분코드',
  `fd_sorc_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자금출처내용',
  `dl_spec_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래특징내용',
  `is_cn_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입해지사유',
  `dl_rltcp_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래상대방명',
  `rm_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금내용',
  `adx_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로',
  `nrpt_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미보고사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_spcn_dl_ud_spc_00` (`rcpdt`,`rcp_hhmm`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='혐의거래심사내역';
