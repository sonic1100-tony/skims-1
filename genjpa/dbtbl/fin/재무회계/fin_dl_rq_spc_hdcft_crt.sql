--
-- Table structure for table `fin_dl_rq_spc_hdcft_crt`
--

DROP TABLE IF EXISTS `fin_dl_rq_spc_hdcft_crt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_rq_spc_hdcft_crt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `dlno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `lpnt_crt_ers_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트생성삭제구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dl_rq_spc_hdcft_crt_00` (`deldt`,`lpnt_dl_flgcd`,`dlno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래요청내역수기생성';
