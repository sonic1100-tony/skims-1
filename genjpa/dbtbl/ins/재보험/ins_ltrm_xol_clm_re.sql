--
-- Table structure for table `ins_ltrm_xol_clm_re`
--

DROP TABLE IF EXISTS `ins_ltrm_xol_clm_re`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ltrm_xol_clm_re` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_re_cr_seqno` decimal(5,0) NOT NULL COMMENT '사고출재발생순번',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ltrm_xol_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기XOL처리구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `bscrl_ry_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업계회수보험금액',
  `bscrl_remn_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업계잔여추산보험금액',
  `thcp_ry_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사회수보험금액',
  `thcp_remn_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사잔여추산보험금액',
  `bscrl_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업계손해액',
  `thcp_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사손해액',
  `xol_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL계약번호',
  `bscrl_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업계보험료',
  `thcp_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ltrm_xol_clm_re_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`clm_re_cr_seqno`,`xi_py_spc_seqno`,`ltrm_xol_dl_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기XOL사고출재';
