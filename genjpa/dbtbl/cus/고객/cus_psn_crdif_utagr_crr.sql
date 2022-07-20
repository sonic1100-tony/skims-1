--
-- Table structure for table `cus_psn_crdif_utagr_crr`
--

DROP TABLE IF EXISTS `cus_psn_crdif_utagr_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_psn_crdif_utagr_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crdif_utl_agre_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보활용동의구분코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `agre_or_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의/요청여부',
  `rq_pth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청경로구분코드',
  `bsc_dcuno_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호유형코드',
  `bsc_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근거문서번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `agre_chn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의채널구분코드',
  `ctm_agre_strdt` date DEFAULT NULL COMMENT '고객동의시작일자',
  `ctm_agre_nddt` date DEFAULT NULL COMMENT '고객동의종료일자',
  `ctm_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의여부',
  `dat_crt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터생성구분코드',
  `agre_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의기간구분코드',
  `mktg_sms_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅SMS수신여부',
  `mktg_tl_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅전화수신여부',
  `mktg_mail_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅이메일수신여부',
  `mktg_dm_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅DM수신여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_psn_crdif_utagr_crr_00` (`ctmno`,`crdif_utl_agre_flgcd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=1412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인신용정보활용동의이력';
