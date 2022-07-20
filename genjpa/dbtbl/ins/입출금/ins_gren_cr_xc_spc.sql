--
-- Table structure for table `ins_gren_cr_xc_spc`
--

DROP TABLE IF EXISTS `ins_gren_cr_xc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gren_cr_xc_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '정산년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상여부',
  `py_crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생번호',
  `suamt_py_amt` decimal(15,0) DEFAULT '0' COMMENT '지원금지급금액',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과코드',
  `msg_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지ID',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_gren_cr_xc_spc_00` (`xc_yymm`,`plyno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='녹색자동차정산내역';
