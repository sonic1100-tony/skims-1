--
-- Table structure for table `lse_clm_nv_requ_bj`
--

DROP TABLE IF EXISTS `lse_clm_nv_requ_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nv_requ_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `hprm_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM의뢰여부',
  `hprm_bj_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM대상의뢰여부',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cpent_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체담당자직원번호',
  `gn_nv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반조사여부',
  `gn_lbtrs_bdl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반배상책임일괄여부',
  `pklt_bdl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주차장일괄여부',
  `hamt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액사고여부',
  `rins_asmt_nvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험지정조사자여부',
  `et_prprt_bdl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타재물일괄여부',
  `acpap_ch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수임변경구분코드',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `clmnv_dfwk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고조사난이도구분코드',
  `clm_dv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고배당구분코드',
  `xp_dmamt` decimal(15,0) DEFAULT NULL COMMENT '예상손해금액',
  `dv_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당유형구분코드',
  `ccl_reqdt` date DEFAULT NULL COMMENT '취소요청일자',
  `ccl_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소요청직원번호',
  `requ_et_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰기타사항',
  `requ_rstcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nv_requ_bj_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clm_nv_seqno`,`requ_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사의뢰대상';
