--
-- Table structure for table `lse_auto_xi_rtx_cc`
--

DROP TABLE IF EXISTS `lse_auto_xi_rtx_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_auto_xi_rtx_cc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `auto_cc_seq` decimal(5,0) NOT NULL COMMENT '자동산출회차',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '추산지급구분코드',
  `dm_dmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '청구손해액',
  `cc_dmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '산출손해액',
  `xi_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추산금액',
  `xi_mdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추산조정금액',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `py_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '지급여부',
  `pydt` date NOT NULL COMMENT '지급일자',
  `xcpt_dl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외처리내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`auto_cc_seq`,`plyno`,`cvrcd`,`clm_cvrcd`,`trmt_seqno`,`cc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동추산영수증산출';
