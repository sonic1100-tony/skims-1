--
-- Table structure for table `lse_clm_nds_cr`
--

DROP TABLE IF EXISTS `lse_clm_nds_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nds_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_nds_seqno` decimal(5,0) NOT NULL COMMENT '사고배서순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `clm_ch_stdt` date NOT NULL COMMENT '사고변경기준일자',
  `clm_ch_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고변경유형코드',
  `clm_nds_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고배서진행상태코드',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `nds_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서설계번호',
  `nds_cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '배서발행후변경순번',
  `pl_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '설계접수번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `nrdps_seqno` decimal(5,0) NOT NULL COMMENT '피보험자순번',
  `de_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사망여부',
  `auto_nds_xcpt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동배서예외유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nds_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`clm_nds_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고배서계약';
