--
-- Table structure for table `ccm_cls_dmamt`
--

DROP TABLE IF EXISTS `ccm_cls_dmamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cls_dmamt` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `ptrm_xiamt` decimal(15,0) DEFAULT NULL COMMENT '전기추산보험금액',
  `lltm_xiamt` decimal(15,0) DEFAULT NULL COMMENT '후기추산보험금액',
  `rn_ds_ibamt` decimal(15,0) DEFAULT NULL COMMENT '원수결정보험금액',
  `ex_ds_ibamt` decimal(15,0) DEFAULT NULL COMMENT '환입결정보험금액',
  `ds_ibamt` decimal(15,0) DEFAULT NULL COMMENT '결정보험금액',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dlrpt_dt` date DEFAULT NULL COMMENT '일보일자',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `de_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망여부',
  `inj_gri` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부상급항',
  `gn_co_appr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동인정구분코드',
  `psrt` decimal(12,6) DEFAULT NULL COMMENT '보유율',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자팀기관코드',
  `chrps_rsdnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자주재기관코드',
  `cr_dmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량손해코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cr_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감손해액';
