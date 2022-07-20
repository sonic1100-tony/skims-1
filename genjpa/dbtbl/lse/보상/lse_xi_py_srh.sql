--
-- Table structure for table `lse_xi_py_srh`
--

DROP TABLE IF EXISTS `lse_xi_py_srh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xi_py_srh` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `remn_xi_amt` decimal(17,2) NOT NULL COMMENT '잔여추산금액',
  `condt_remn_xiamt` decimal(17,2) NOT NULL COMMENT '공동인수잔여추산금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xi_py_srh_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`ibnf_cs_flgcd`,`cc_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=70748 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='추산지급검색';
