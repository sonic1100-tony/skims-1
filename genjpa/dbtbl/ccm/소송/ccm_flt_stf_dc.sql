--
-- Table structure for table `ccm_flt_stf_dc`
--

DROP TABLE IF EXISTS `ccm_flt_stf_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_flt_stf_dc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `flt_stf_dc_dgre` decimal(1,0) NOT NULL COMMENT '과실상계공제차수',
  `fltrt` decimal(3,0) NOT NULL COMMENT '과실율',
  `flt_stfaf_prop_dmamt` decimal(15,0) NOT NULL COMMENT '과실상계후재산손해금액',
  `flt_ap_mdcf` decimal(15,0) NOT NULL COMMENT '과실적용치료비',
  `dcaf_prop_dmamt` decimal(15,0) NOT NULL COMMENT '공제후재산손해금액',
  `cslmn` decimal(17,2) NOT NULL COMMENT '위자료',
  `flt_stf_dc_ccamt` decimal(15,0) NOT NULL COMMENT '과실상계공제산출금액',
  `dlay_ntamt` decimal(15,0) DEFAULT NULL COMMENT '지연이자금액',
  `dlay_nt_cal_stdt` date DEFAULT NULL COMMENT '지연이자계산기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_flt_stf_dc_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`flt_stf_dc_dgre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='과실상계공제';
