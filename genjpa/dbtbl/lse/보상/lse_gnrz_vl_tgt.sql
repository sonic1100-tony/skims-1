--
-- Table structure for table `lse_gnrz_vl_tgt`
--

DROP TABLE IF EXISTS `lse_gnrz_vl_tgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gnrz_vl_tgt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `org_spcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관특성코드',
  `tot_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '전체금액조정율',
  `de_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '사망금액조정율',
  `sel_obs_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '후유장해금액조정율',
  `mdcs_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '의료비금액조정율',
  `dascs_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '진단비금액조정율',
  `ddalw_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '일당금액조정율',
  `mri_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT 'MRI금액조정율',
  `spsw_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '초음파금액조정율',
  `chnmd_pomd_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '한방첩약금액조정율',
  `et1_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타1금액조정율',
  `et2_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타2금액조정율',
  `et3_amt_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타3금액조정율',
  `tot_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '전체건수조정율',
  `de_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '사망건수조정율',
  `sel_obs_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '후유장해건수조정율',
  `mdcs_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '의료비건수조정율',
  `dascs_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '진단비건수조정율',
  `ddalw_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '일당건수조정율',
  `mri_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT 'MRI건수조정율',
  `spsw_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '초음파건수조정율',
  `chnmd_pomd_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '한방첩약건수조정율',
  `et1_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타1건수조정율',
  `et2_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타2건수조정율',
  `et3_ct_mdrt` decimal(12,6) DEFAULT NULL COMMENT '기타3건수조정율',
  `hrd_ins_crme_amt` decimal(17,2) DEFAULT NULL COMMENT '경성보험범죄금액',
  `inso_cr_mntn_rt` decimal(12,6) DEFAULT NULL COMMENT '부실계약정비율',
  `mdcs_py_mdamt` decimal(17,2) DEFAULT NULL COMMENT '의료비지급조정금액',
  `cvap_ct` decimal(7,1) DEFAULT NULL COMMENT '민원건수',
  `voc_ct` decimal(7,1) DEFAULT NULL COMMENT 'VOC건수',
  `scr_inq_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면조회순서',
  `cmp_praff_psct` decimal(7,0) DEFAULT NULL COMMENT '보상실무인원수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gnrz_vl_tgt_00` (`orgcd`,`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='종합평가목표';
