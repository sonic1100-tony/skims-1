--
-- Table structure for table `lse_nt_prpn_ccbsc`
--

DROP TABLE IF EXISTS `lse_nt_prpn_ccbsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nt_prpn_ccbsc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전형태코드',
  `chbf_prm` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '변경전보험료',
  `chaf_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후보험료',
  `ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통지비례산출근거';
