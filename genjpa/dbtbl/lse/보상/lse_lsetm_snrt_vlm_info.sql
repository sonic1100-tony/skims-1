--
-- Table structure for table `lse_lsetm_snrt_vlm_info`
--

DROP TABLE IF EXISTS `lse_lsetm_snrt_vlm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_snrt_vlm_info` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `dm_sy_snrt_rq_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해사정인선임요청코드',
  `cmp_agre_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사동의여부코드',
  `dm_sypnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정인명',
  `ptnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위명',
  `cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사명',
  `ctq_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격증등록번호',
  `chrps_dsdt` date DEFAULT NULL COMMENT '담당자지정일자',
  `rptg_prsdt` date DEFAULT NULL COMMENT '보고서제출일자',
  `adr_cn` varchar(280) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소내용',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `re_snrt_and_rejet_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재선임및거부사유코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime DEFAULT NULL COMMENT '입력일시',
  `mdf_dthms` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사선임권정보';
