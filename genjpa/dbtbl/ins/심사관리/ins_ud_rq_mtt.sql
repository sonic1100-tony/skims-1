--
-- Table structure for table `ins_ud_rq_mtt`
--

DROP TABLE IF EXISTS `ins_ud_rq_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_rq_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `befo_rncmp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전원수사구분코드',
  `cutyr_prm` decimal(15,0) DEFAULT NULL COMMENT '당해년도보험료',
  `bfyy_prm` decimal(17,2) DEFAULT NULL COMMENT '전년도보험료',
  `bf_bfyy_prm` decimal(17,2) DEFAULT NULL COMMENT '전전년도보험료',
  `cutyr_dmgrt` decimal(15,7) DEFAULT NULL COMMENT '당해년도손해율',
  `bfyy_dmgrt` decimal(15,7) DEFAULT NULL COMMENT '전년도손해율',
  `bf_bfyy_dmgrt` decimal(15,7) DEFAULT NULL COMMENT '전전년도손해율',
  `cutyr_clmcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당해년도사고내용',
  `bfyy_clmcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전년도사고내용',
  `bf_bfyy_clmcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전전년도사고내용',
  `asso_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회여부',
  `tnd_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰계약여부',
  `bn_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종상세내용',
  `et_nc_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타알릴내용',
  `lbrxp_ccbsc_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '노무비산출근거내용',
  `wrk_trm_cvr_wrk_scl_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공사기간담보작업범위내용',
  `cvr_lbrr_scl_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보근로자범위내용',
  `cvr_bzwpl_scl_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보사업장범위내용',
  `nrdps_relnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관계명',
  `crt_bnnm` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자업종명',
  `nrdps_bdt_dt_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직무상세내용',
  `gr_knd_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체종류내용',
  `gd_cn_pw_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품내용공정내용',
  `cutyr_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당해년도사고여부',
  `bfyy_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전년도사고여부',
  `bf_bfyy_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전전년도사고여부',
  `cutyr_dmamt` decimal(17,2) DEFAULT NULL COMMENT '당해년도손해액',
  `bfyy_dmamt` decimal(17,2) DEFAULT NULL COMMENT '전년도손해액',
  `bf_bfyy_dmamt` decimal(17,2) DEFAULT NULL COMMENT '전전년도손해액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ud_rq_mtt_00` (`udno`,`ndv_ud_seqno`,`ikd_grpcd`,`ins_imcd`,`gdcd`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사요청사항';
