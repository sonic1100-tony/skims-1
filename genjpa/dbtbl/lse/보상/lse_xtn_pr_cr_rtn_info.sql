--
-- Table structure for table `lse_xtn_pr_cr_rtn_info`
--

DROP TABLE IF EXISTS `lse_xtn_pr_cr_rtn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xtn_pr_cr_rtn_info` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `dpsr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주주민번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `act_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌확인여부',
  `crt_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자관계코드',
  `ihthe_agre_rc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인동의수령여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`bkcd`,`actno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소멸예정계약환급정보';
