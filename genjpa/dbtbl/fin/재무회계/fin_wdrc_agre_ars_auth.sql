--
-- Table structure for table `fin_wdrc_agre_ars_auth`
--

DROP TABLE IF EXISTS `fin_wdrc_agre_ars_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_wdrc_agre_ars_auth` (
  `iptdt` date NOT NULL COMMENT '입력일자',
  `tmmno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전문번호',
  `vnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'VAN사기관코드',
  `ars_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ARS거래구분코드',
  `wdrc_agre_tlm_flgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의전문구분번호',
  `wdrc_agre_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의응답코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납부자번호',
  `hndph_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰번호',
  `ntc_ment_memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내멘트메모내용',
  `wdrc_agre_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의업무구분코드',
  `wdrc_agre_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의이체구분코드',
  `inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`iptdt`,`tmmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출금동의ARS인증';
