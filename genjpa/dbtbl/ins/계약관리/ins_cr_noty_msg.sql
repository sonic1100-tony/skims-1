--
-- Table structure for table `ins_cr_noty_msg`
--

DROP TABLE IF EXISTS `ins_cr_noty_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_noty_msg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_noty_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차알림업무구분코드',
  `dh_chn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급채널구분코드',
  `noty_dt` date NOT NULL COMMENT '알림일자',
  `noty_seqno` decimal(10,0) NOT NULL COMMENT '알림순번',
  `noty_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림채널코드',
  `noty_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림대상구분코드',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `bfcr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약증권번호',
  `bfcr_ins_clstr` date DEFAULT NULL COMMENT '전계약보험종기',
  `bfcr_milg_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약마일리지가입여부',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목소분류코드',
  `rnw_plno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신설계번호',
  `rnw_prm` decimal(17,2) DEFAULT NULL COMMENT '갱신보험료',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `snd_rq_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송요청ID',
  `ecre_no` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이케어번호',
  `rcvpt_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자전화지역번호',
  `rcvpt_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자전화국번',
  `rcvpt_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자전화일련번호',
  `sndr_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화지역번호',
  `sndr_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화국번',
  `sndr_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화일련번호',
  `snd_dthms` datetime DEFAULT NULL COMMENT '발송일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_noty_msg_00` (`cr_noty_bsns_flgcd`,`dh_chn_flgcd`,`noty_dt`,`noty_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차알림메시지';
