--
-- Table structure for table `fin_imtmc_acs_snd`
--

DROP TABLE IF EXISTS `fin_imtmc_acs_snd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_imtmc_acs_snd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_seqno` decimal(10,0) NOT NULL COMMENT '발송순번',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '업무관련번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `hpno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '휴대폰번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주명',
  `imtmc_amt` decimal(15,0) NOT NULL COMMENT '즉시집금금액',
  `imtmc_acs_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시집금ACS결과코드',
  `acs_rq_dthms` datetime NOT NULL COMMENT 'ACS요청일시',
  `acs_rcv_dthms` datetime DEFAULT NULL COMMENT 'ACS수신일시',
  `imtmc_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시집금동의여부',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `wdrc_agre_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의이미지업무번호',
  `clcnt_rec_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '콜센터녹취ID',
  `wdrc_agre_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료구분코드',
  `fd_mnclt_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자금집금방법코드',
  `chr_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자수신여부',
  `chr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자내용',
  `imty_wdrc_dpsr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시출금예금주관계코드',
  `attf_pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체납부자번호',
  `auto_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_imtmc_acs_snd_00` (`snddt`,`snd_seqno`),
  KEY `idx_fin_imtmc_acs_snd_01` (`actno`)
) ENGINE=InnoDB AUTO_INCREMENT=11426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='즉시집금ACS발송';
