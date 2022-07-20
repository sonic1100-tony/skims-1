--
-- Table structure for table `ccm_inssw_sprpt`
--

DROP TABLE IF EXISTS `ccm_inssw_sprpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_inssw_sprpt` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `acdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사건명',
  `prnt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '제보자직원번호',
  `lnlir_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '생손보구분코드',
  `sp_rpt_rcp_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인지보고접수방법코드',
  `rcp_dthms` datetime NOT NULL COMMENT '접수일시',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '사고내용',
  `spcn_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혐의내용',
  `sp_rpt_ref_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인지보고참고사항',
  `spcn_ifamt` decimal(15,0) DEFAULT '0' COMMENT '혐의추정금액',
  `fsvs_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원접수년도',
  `fsvs_rcp_seqno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원접수순번',
  `fsvs_rcp_dthms` datetime DEFAULT NULL COMMENT '금감원접수일시',
  `fsvs_rpt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '금감원보고직원번호',
  `fsvs_ts_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원전송대상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사기인지보고';
