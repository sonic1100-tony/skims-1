--
-- Table structure for table `ins_ovse_rins_xc_bjamt`
--

DROP TABLE IF EXISTS `ins_ovse_rins_xc_bjamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ovse_rins_xc_bjamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금액발생단위번호',
  `cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약구분코드',
  `ovsqt_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외분금액구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `rinsr_reno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자출재번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산일계번호',
  `ac_tfdt` date DEFAULT NULL COMMENT '경리이체일자',
  `xaamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '정산금액',
  `cm_nvcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수수료조사비용',
  `rnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '유보금액',
  `xc_net_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '정산정미금액',
  `woncv_xc_net_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산정산정미금액',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ovse_rins_xc_bjamt_00` (`amt_cr_untno`,`cr_flgcd`,`ovsqt_amt_flgcd`,`dltcd`,`rinsr_reno`,`ptccd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외재보험정산대상금액';
