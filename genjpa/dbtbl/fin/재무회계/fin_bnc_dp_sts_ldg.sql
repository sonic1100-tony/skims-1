--
-- Table structure for table `fin_bnc_dp_sts_ldg`
--

DROP TABLE IF EXISTS `fin_bnc_dp_sts_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bnc_dp_sts_ldg` (
  `bnc_info_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '방카정보발생구분코드',
  `bnc_info_cr_flgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '방카정보발생구분번호',
  `bnc_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '방카집계구분코드',
  `dpdt` date NOT NULL COMMENT '입금일자',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `bk_extn_qfpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행유자격자번호',
  `bsns_flgno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rtxno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증번호',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bnc_info_cr_flgcd`,`bnc_info_cr_flgno`,`bnc_tot_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='방카입금통계원장';
