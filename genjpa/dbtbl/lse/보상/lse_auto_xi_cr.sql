--
-- Table structure for table `lse_auto_xi_cr`
--

DROP TABLE IF EXISTS `lse_auto_xi_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_auto_xi_cr` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `auto_cc_seq` decimal(5,0) NOT NULL COMMENT '자동산출회차',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약상태코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '확정여부',
  `sbcvr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '부담보여부',
  `dsas_sbcvr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '질병부담보여부',
  `nd_af_fr_trmt_dt` date DEFAULT NULL COMMENT '만료후최초진료일자',
  `xcpt_dl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외처리내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`auto_cc_seq`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동추산계약';
