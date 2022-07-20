--
-- Table structure for table `ccm_chrps_ch_rq_spc`
--

DROP TABLE IF EXISTS `ccm_chrps_ch_rq_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_chrps_ch_rq_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `chrps_ch_rq_seqno` decimal(5,0) NOT NULL COMMENT '담당자변경요청순번',
  `chrps_ch_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자변경사유코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `ch_rq_dthms` datetime NOT NULL COMMENT '변경요청일시',
  `chbf_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전담당자기관코드',
  `chbf_chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전담당자팀기관코드',
  `chbf_chrps_rsdnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전담당자주재기관코드',
  `chbf_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전담당자직원번호',
  `chaf_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후담당자기관코드',
  `chaf_chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후담당자팀기관코드',
  `chaf_chrps_rsdnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후담당자주재기관코드',
  `chaf_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후담당자직원번호',
  `chbf_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전고객번호',
  `chbf_cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '변경전협력업체순번',
  `chaf_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후고객번호',
  `chaf_cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '변경후협력업체순번',
  `ta_strdt` date DEFAULT NULL COMMENT '이관시작일자',
  `ta_nddt` date DEFAULT NULL COMMENT '이관종료일자',
  `batch_ta_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치이관처리여부',
  `chaf_hwy_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후고속도로사고여부',
  `chaf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후우편번호',
  `chaf_sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후시도',
  `chaf_sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후시군구',
  `chaf_twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후읍면동',
  `chaf_ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후리/대량배달처',
  `chaf_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후상세주소',
  `chbf_ntg_supt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전입고지원여부',
  `chaf_ntg_supt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후입고지원여부',
  `nw_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신우편번호',
  `nw_ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신리/대량배달처',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_chrps_ch_rq_spc_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`chrps_ch_rq_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담당자변경요청내역';
