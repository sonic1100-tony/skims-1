--
-- Table structure for table `lse_hamt_clm_dm`
--

DROP TABLE IF EXISTS `lse_hamt_clm_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hamt_clm_dm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `inp_seq` decimal(3,0) NOT NULL COMMENT '입력회차',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rtrn_sign` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복기부호',
  `ojnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물명',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `sbamt` decimal(17,2) DEFAULT NULL COMMENT '잔존물금액',
  `pibam_smamt` decimal(17,2) DEFAULT NULL COMMENT '지급보험금합계금액',
  `hamt_clm_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액사고지급구분코드',
  `psrt` decimal(12,6) DEFAULT NULL COMMENT '보유율',
  `ps_ibamt` decimal(17,2) DEFAULT NULL COMMENT '보유보험금액',
  `ivamt` decimal(17,2) DEFAULT NULL COMMENT '보험가액',
  `cvr_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보내역',
  `cmp_lmamt` decimal(17,2) DEFAULT NULL COMMENT '보상한도금액',
  `clc_ref_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산정참고사항',
  `ndamt` decimal(17,2) DEFAULT NULL COMMENT '순손해금액',
  `uiamt` decimal(17,2) DEFAULT NULL COMMENT '공제금액',
  `ag_amt` decimal(17,2) DEFAULT NULL COMMENT '합의금액',
  `cmplm_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hamt_clm_dm_00` (`rcp_yymm`,`rcp_nv_seqno`,`inp_seq`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고액사고손해';
