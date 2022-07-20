--
-- Table structure for table `fin_imtmc_outs_org_auth`
--

DROP TABLE IF EXISTS `fin_imtmc_outs_org_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_imtmc_outs_org_auth` (
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_seqno` decimal(10,0) NOT NULL COMMENT '발송순번',
  `tlm_seqno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '전문순번',
  `imtmc_auth_outs_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '즉시집금인증외부기관코드',
  `imtmc_auth_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '즉시집금인증요청구분코드',
  `trrv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '송수신구분코드',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '생년월일',
  `dl_cls_hms` datetime DEFAULT NULL COMMENT '처리마감시간',
  `clcnt_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '콜센터전화번호',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납부자번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `calbk_url_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '콜백URL주소',
  `elec_sign_ortx_rcpno` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명원문접수번호',
  `dl_rst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과여부',
  `auth_info_cn_1` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증정보내용1',
  `auth_info_cn_2` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증정보내용2',
  `bf_cnsdc_crt_sno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자문서생성일련번호',
  `errcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에러코드',
  `err_msg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에러메시지내용',
  `trs_dthms` datetime DEFAULT NULL COMMENT '송신일시',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`snddt`,`snd_seqno`,`tlm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='즉시집금외부기관인증';
