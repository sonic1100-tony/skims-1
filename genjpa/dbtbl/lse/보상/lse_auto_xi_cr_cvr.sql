--
-- Table structure for table `lse_auto_xi_cr_cvr`
--

DROP TABLE IF EXISTS `lse_auto_xi_cr_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_auto_xi_cr_cvr` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `auto_cc_seq` decimal(5,0) NOT NULL COMMENT '자동산출회차',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '담보명',
  `cvr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보상태코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `hsp_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입원가입금액',
  `otp_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '통원가입금액',
  `annu_cmplm_ct` decimal(3,0) NOT NULL COMMENT '연간보상한도횟수',
  `nt_ppcp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '통지비례보상여부',
  `chbf_prm` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '변경전보험료',
  `chaf_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후보험료',
  `nt_prpn_rt` decimal(6,3) NOT NULL DEFAULT '0.000' COMMENT '통지비례비율',
  `cnbd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '기여도여부',
  `db_ppcp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '중복비례보상여부',
  `db_prpn_rt` decimal(6,3) NOT NULL DEFAULT '0.000' COMMENT '중복비례비율',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정여부',
  `xcpt_dl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외처리내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`auto_cc_seq`,`plyno`,`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동추산계약담보';
