--
-- Table structure for table `ccm_cr_pgamt_spc`
--

DROP TABLE IF EXISTS `ccm_cr_pgamt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_pgamt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송업무구분코드',
  `self_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '본인위자료',
  `mat_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배우자위자료',
  `chd_psct` decimal(5,0) NOT NULL COMMENT '자녀명수',
  `chd_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자녀위자료',
  `parn_psct` decimal(5,0) NOT NULL COMMENT '부모명수',
  `parn_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부모위자료',
  `sbln_psct` decimal(5,0) NOT NULL COMMENT '형제명수',
  `sbln_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '형제위자료',
  `et_psct` decimal(5,0) NOT NULL COMMENT '기타명수',
  `et_cslmn` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타위자료',
  `psbsn_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '휴업손해액',
  `los_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상실수익액',
  `fnrxp` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장례비',
  `bygn_mdcf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기왕치료비',
  `next_mdcf` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '향후치료비',
  `md_asmcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료보조기비',
  `nsamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '개호비',
  `loss_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일실퇴직금액',
  `prdm_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대물손해액',
  `et_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타손해액',
  `flt_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과실상계액',
  `mdcf_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '치료비상계액',
  `lcamt_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손배금액공제액',
  `pvsp_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기왕증공제액',
  `et1_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타1공제액',
  `et2_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타2공제액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_pgamt_spc_00` (`lw_prg_sno`,`lw_bsns_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차진행금액내역';
