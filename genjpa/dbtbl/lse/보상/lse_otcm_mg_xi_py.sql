--
-- Table structure for table `lse_otcm_mg_xi_py`
--

DROP TABLE IF EXISTS `lse_otcm_mg_xi_py`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_otcm_mg_xi_py` (
  `cr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발생년월',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin NOT NULL COMMENT '타사증권번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `mg_clmno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사고번호',
  `clmdt` date NOT NULL COMMENT '사고일자',
  `marne_py_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해상지급내역구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `remn_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산금액',
  `cs_dm_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용손해화폐코드',
  `cs_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '비용금액',
  `remn_xi_csamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산비용금액',
  `thcp_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사증권번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `mgcmp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사코드',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `otcm_mg_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사간사처리상태코드',
  `re_flg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분회사코드',
  `reno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cr_yymm`,`otcm_plyno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='타사간사추산지급';
