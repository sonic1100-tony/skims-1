--
-- Table structure for table `lse_mstk_py_prvtn`
--

DROP TABLE IF EXISTS `lse_mstk_py_prvtn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mstk_py_prvtn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `rcp_seqno` decimal(5,0) DEFAULT NULL COMMENT '접수순번',
  `xtn_prsc_comp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '소멸시효완성여부',
  `xtn_prsc_ap_rq_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소멸시효승인요청사유',
  `twwhl_crclm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '이륜차사고여부',
  `twwhl_crclm_ap_rq_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이륜차사고승인요청사유',
  `sz_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '압류여부',
  `sz_clm_ap_rq_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '압류사고승인요청사유',
  `idm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '구상여부',
  `idm_clm_ap_rq_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상사고승인요청사유',
  `nots_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요내용',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `db_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복접수년월',
  `db_rcpnv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복접수조사순번',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mstk_py_prvtn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`dm_seqno`,`plyno`,`cc_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실수지급방지';
