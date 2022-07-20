--
-- Table structure for table `ccm_siu_coonv`
--

DROP TABLE IF EXISTS `ccm_siu_coonv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_coonv` (
  `nv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '조사년도',
  `bscrl_coonv_seqno` decimal(10,0) NOT NULL COMMENT '업계공동조사순번',
  `siu_inp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU입력구분코드',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rgt_rs_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유보종코드',
  `acdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건명',
  `siu_da_rq_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU자료요청기관코드',
  `cnn_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련문서번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `prsdt` date DEFAULT NULL COMMENT '제출일자',
  `mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사코드',
  `siu_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU조사유형코드',
  `siu_co_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU공동조사유형코드',
  `detc_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사지역코드',
  `detc_jrd_pcenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사관할경찰서명',
  `psc_pmn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰구분코드',
  `lclt_psc_pmncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지방검찰경찰코드',
  `psc_pcecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰서코드',
  `chr_dtctv_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당수사관성명',
  `detc_prg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사진행구분코드',
  `rstrn_psct` decimal(5,0) DEFAULT NULL COMMENT '구속인원수',
  `non_rstrn_psct` decimal(5,0) DEFAULT NULL COMMENT '불구속인원수',
  `nv_hod_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사실장직원번호',
  `bscrl_sjtdn_amt` decimal(15,0) DEFAULT NULL COMMENT '업계적발금액',
  `sjtdn_amt` decimal(15,0) DEFAULT NULL COMMENT '적발금액',
  `asso_no_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회번호년도',
  `asso_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회일련번호',
  `fsvs_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원접수년도',
  `fsvs_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원접수번호',
  `siu_enddt` date DEFAULT NULL COMMENT 'SIU종결일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`nv_yr`,`bscrl_coonv_seqno`,`siu_inp_flgcd`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동조사';
