--
-- Table structure for table `lse_clm_nv_requ_org`
--

DROP TABLE IF EXISTS `lse_clm_nv_requ_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nv_requ_org` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `requ_org_seqno` decimal(3,0) NOT NULL COMMENT '의뢰기관순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bjps_seqno` decimal(3,0) DEFAULT NULL COMMENT '대상자순번',
  `clmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고자명',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `nv_rqudt` date DEFAULT NULL COMMENT '조사의뢰일자',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `nv_requ_org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사의뢰기관구분코드',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clm_nv_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고조사순번',
  `cpent_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체담당자직원번호',
  `hprm_requ_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM의뢰대상여부',
  `hprm_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM진행상태코드',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nv_requ_org_00` (`rcp_yymm`,`rcp_nv_seqno`,`requ_org_seqno`),
  KEY `idx_lse_clm_nv_requ_org_10` (`ctmno`),
  KEY `idx_lse_clm_nv_requ_org_11` (`nv_rqudt`,`chrps_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사의뢰기관';
