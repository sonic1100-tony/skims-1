--
-- Table structure for table `fin_ars_tlm`
--

DROP TABLE IF EXISTS `fin_ars_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ars_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문식별코드',
  `ars_spocd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT 'ARS전문기관코드',
  `ars_tlm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'ARS전문구분코드',
  `ars_spdlg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'ARS전문거래구분코드',
  `deldt` date NOT NULL COMMENT '거래일자',
  `spdlg_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전문거래시간',
  `ars_dl_sno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'ARS거래일련번호',
  `rcvpt_hpno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수신자휴대폰번호',
  `ars_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ARS응답코드',
  `ars_autno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ARS인증번호',
  `ars_ntc_ment_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ARS안내멘트내용',
  `ars_frbn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ARS펌뱅킹기관코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납부자번호',
  `evd_da_size_vl` decimal(7,0) DEFAULT NULL COMMENT '증빙자료크기값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_ars_tlm_00` (`tlm_dsccd`,`ars_spocd`,`ars_tlm_flgcd`,`ars_spdlg_flgcd`,`deldt`,`spdlg_hms`,`ars_dl_sno`,`rcvpt_hpno`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ARS전문';
