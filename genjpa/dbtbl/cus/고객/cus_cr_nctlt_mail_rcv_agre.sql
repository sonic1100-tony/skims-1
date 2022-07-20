--
-- Table structure for table `cus_cr_nctlt_mail_rcv_agre`
--

DROP TABLE IF EXISTS `cus_cr_nctlt_mail_rcv_agre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cr_nctlt_mail_rcv_agre` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ctm_agre_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '고객동의여부',
  `agre_rcv_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의수신방법코드',
  `agre_chn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의채널구분코드',
  `mail_rcv_agre_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일수신동의내용',
  `agre_strdt` date DEFAULT NULL COMMENT '동의시작일자',
  `agre_nddt` date DEFAULT NULL COMMENT '동의종료일자',
  `bsc_dcuno_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호유형코드',
  `bsc_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cr_nctlt_mail_rcv_agre_00` (`ctmno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약안내문메일수신동의';
