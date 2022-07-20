--
-- Table structure for table `ccm_spccf_spc_ctn`
--

DROP TABLE IF EXISTS `ccm_spccf_spc_ctn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_spccf_spc_ctn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `ctn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의견구분코드',
  `ctn_dgre` decimal(3,0) NOT NULL COMMENT '의견차수',
  `flt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실내용',
  `fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '과실율',
  `obs_ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해의견내용',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `ic_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득내용',
  `icamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '소득금액',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정여부',
  `fnl_ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종의견내용',
  `optn_stnw_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임의기준내산출기준구분코드',
  `optn_stnw_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '임의기준내산출회차',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '보상키순번',
  `dm_lbamt_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '손해배상금산출회차',
  `flt_clmcn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실사고내용',
  `ic_victm_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득피해자직업명',
  `ic_dmnst_da_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득입증자료내용',
  `obs_inj_par_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해부상부위내용',
  `obs_victm_asrt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해피해자주장내용',
  `obs_thcp_cnst_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해당사자문내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_spccf_spc_ctn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`,`ctn_flgcd`,`ctn_dgre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특인내역의견';
