--
-- Table structure for table `ccm_cpent_spcn_prnt`
--

DROP TABLE IF EXISTS `ccm_cpent_spcn_prnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cpent_spcn_prnt` (
  `prnt_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수년월',
  `prnt_rcp_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수순번',
  `prnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보구분코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `cprt_entp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체구분코드',
  `cpent_prs_bzmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체대표사업자번호',
  `cprt_entnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체명',
  `prnt_rcpdt` date NOT NULL COMMENT '제보접수일자',
  `prnt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '제보자직원번호',
  `prnt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '제보자기관코드',
  `prnt_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '제보자팀기관코드',
  `spcn_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혐의내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prnt_rcp_yymm`,`prnt_rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체혐의제보';
