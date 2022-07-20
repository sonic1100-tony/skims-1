--
-- Table structure for table `ccm_larg_clm_spc`
--

DROP TABLE IF EXISTS `ccm_larg_clm_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_larg_clm_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `larg_clm_spc_seqno` decimal(3,0) NOT NULL COMMENT '대사고내역순번',
  `larg_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대사고구분코드',
  `larg_clm_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '대사고접수년도',
  `larg_clm_sno` decimal(5,0) NOT NULL COMMENT '대사고일련번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `nrdps_rl_jb_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자실제직업한글명',
  `victm_mn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '피해자최소과실율',
  `victm_mx_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '피해자최대과실율',
  `gdwl_rdtgr_mn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '호의동승최소과실율',
  `gdwl_rdtgr_mx_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '호의동승최대과실율',
  `owcr_mn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '자차최소과실율',
  `owcr_mx_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '자차최대과실율',
  `othcr_mn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '타차최소과실율',
  `othcr_mx_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '타차최대과실율',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '사고내용',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `mn_usd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주사용도',
  `trt_mtt` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약사항',
  `vis_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문여부',
  `nvis_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미방문사유구분코드',
  `rqmtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요구사항구분코드',
  `vis_pr_dthms` datetime DEFAULT NULL COMMENT '방문예정일시',
  `tmppy_amt` decimal(15,0) DEFAULT '0' COMMENT '가지급금액',
  `cpkg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위문품여부',
  `dmamt_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해액안내여부',
  `rnt_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트안내여부',
  `tmppy_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가지급안내여부',
  `fnl_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종확인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_larg_clm_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`larg_clm_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대사고내역';
