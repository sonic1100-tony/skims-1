--
-- Table structure for table `fin_acct_tf`
--

DROP TABLE IF EXISTS `fin_acct_tf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_acct_tf` (
  `tfdt` date NOT NULL COMMENT '이체일자',
  `tf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체구분코드',
  `tf_seqno` decimal(5,0) NOT NULL COMMENT '이체순번',
  `tf_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체시간',
  `tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체금액',
  `tfaf_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체후잔액',
  `tf_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체수수료',
  `wdrc_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금상대처코드',
  `dp_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금상대처코드',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `wdra_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인출전표라인번호',
  `mnclt_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집금전표라인번호',
  `dp_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금원장번호',
  `nml_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상여부',
  `erp_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tfdt`,`tf_flgcd`,`tf_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통장이체';
