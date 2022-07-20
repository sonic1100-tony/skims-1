--
-- Table structure for table `lse_hprm_dbins`
--

DROP TABLE IF EXISTS `lse_hprm_dbins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_dbins` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prprt_dt_seqno` decimal(3,0) NOT NULL COMMENT '재물상세순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ot_inscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '타보험사코드',
  `ot_insnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타보험사명',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `inrt` decimal(12,6) DEFAULT NULL COMMENT '부보율',
  `re_sply_cnd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재조달조건여부',
  `prpn_cmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비례보상여부',
  `uiamt` decimal(17,2) DEFAULT NULL COMMENT '공제금액',
  `uiamt_ap_metd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제금액적용방식구분코드',
  `ins_isamt` decimal(17,2) DEFAULT NULL COMMENT '보험가입금액',
  `ivamt` decimal(17,2) DEFAULT NULL COMMENT '보험가액',
  `iramt_amt` decimal(15,0) DEFAULT NULL COMMENT '부보금액',
  `ndamt` decimal(17,2) DEFAULT NULL COMMENT '순손해금액',
  `indpd_rpamt` decimal(17,2) DEFAULT NULL COMMENT '독립책임금액',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_dbins_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prprt_dt_seqno`,`seqno`,`ot_inscd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM중복보험';
