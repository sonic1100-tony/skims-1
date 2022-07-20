--
-- Table structure for table `lse_lsetm_rst_ntc`
--

DROP TABLE IF EXISTS `lse_lsetm_rst_ntc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_rst_ntc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lsetm_ntc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사안내구분코드',
  `ss_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발행구분코드',
  `cmp_py_rltno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '보상지급연계번호',
  `ssno` decimal(5,0) NOT NULL COMMENT '발행번호',
  `ss_dthms` datetime DEFAULT NULL COMMENT '발행일시',
  `ss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행여부',
  `ss_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '발행대상여부',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `dl_prdt` date DEFAULT NULL COMMENT '처리예정일자',
  `py_dlay_days` decimal(5,0) DEFAULT NULL COMMENT '지급지연일수',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `dlay_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연사유구분코드',
  `dlay_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연사유',
  `rcv_cntad_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신연락처사항',
  `pstpo_snd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편물발송상태코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `clmps_rs_or_crpno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고자주민/법인번호',
  `crt_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체주소',
  `rcvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자명',
  `snd_msg` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송메시지',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_rst_ntc_00` (`lsetm_ntc_flgcd`,`ss_flgcd`,`cmp_py_rltno`,`ssno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무결과안내';
