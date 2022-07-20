--
-- Table structure for table `ccm_cidps_ex`
--

DROP TABLE IF EXISTS `ccm_cidps_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_ex` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `ex_ordr` decimal(5,0) NOT NULL COMMENT '환입순차',
  `exdt` date DEFAULT NULL COMMENT '환입일자',
  `expl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입처구분코드',
  `ex_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입구분코드',
  `part_ex_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일부환입사유코드',
  `ibnf_ex_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금환입방법코드',
  `ex_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '환입팀기관코드',
  `ex_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '환입담당자직원번호',
  `cmp_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수년월',
  `cmp_rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수조사순번',
  `cmp_dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상피해서열',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급결의번호',
  `ex_dpdt` date DEFAULT NULL COMMENT '환입입금일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_ex_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`cidps_rank`,`ex_ordr`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자환입';
