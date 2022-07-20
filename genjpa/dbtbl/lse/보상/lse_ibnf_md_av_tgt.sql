--
-- Table structure for table `lse_ibnf_md_av_tgt`
--

DROP TABLE IF EXISTS `lse_ibnf_md_av_tgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_md_av_tgt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `org_spcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관특성코드',
  `tot_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '전체목표조정율',
  `hamt_chrps_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '고액담당자목표조정율',
  `de_sel_obs_mdrt` decimal(12,6) DEFAULT NULL COMMENT '사망후유장해조정율',
  `mdcs_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '의료비목표조정율',
  `dascs_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '진단비목표조정율',
  `ddalw_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '일당목표조정율',
  `mri_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT 'MRI목표조정율',
  `spsw_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '초음파목표조정율',
  `chnmd_pomd_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '한방첩약목표조정율',
  `grin_ppcp_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '단체보험비례보상목표조정율',
  `et1_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타1목표조정율',
  `et2_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타2목표조정율',
  `et3_tgt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타3목표조정율',
  `tot_md_amt` decimal(17,2) DEFAULT NULL COMMENT '전체조정금액',
  `hamt_chrps_mdamt` decimal(17,2) DEFAULT NULL COMMENT '고액담당자조정금액',
  `de_sel_obs_mdamt` decimal(17,2) DEFAULT NULL COMMENT '사망후유장해조정금액',
  `dascs_mdamt` decimal(17,2) DEFAULT NULL COMMENT '진단비조정금액',
  `mdcs_mdamt` decimal(17,2) DEFAULT NULL COMMENT '의료비조정금액',
  `ddalw_mdamt` decimal(17,2) DEFAULT NULL COMMENT '일당조정금액',
  `mri_mdamt` decimal(17,2) DEFAULT NULL COMMENT 'MRI조정금액',
  `spsw_mdamt` decimal(17,2) DEFAULT NULL COMMENT '초음파조정금액',
  `chnmd_pomd_mdamt` decimal(17,2) DEFAULT NULL COMMENT '한방첩약조정금액',
  `grin_ppcp_mdamt` decimal(17,2) DEFAULT NULL COMMENT '단체보험비례보상조정금액',
  `et1_tgt_mdamt` decimal(17,2) DEFAULT NULL COMMENT '기타1목표조정금액',
  `et2_tgt_mdamt` decimal(17,2) DEFAULT NULL COMMENT '기타2목표조정금액',
  `et3_tgt_mdamt` decimal(17,2) DEFAULT NULL COMMENT '기타3목표조정금액',
  `scr_inq_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면조회순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_md_av_tgt_00` (`orgcd`,`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금조정실적목표';
