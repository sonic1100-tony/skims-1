--
-- Table structure for table `ins_cmins_clm_cvr_cls`
--

DROP TABLE IF EXISTS `ins_cmins_clm_cvr_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_clm_cvr_cls` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `thcp_qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '당사지분율',
  `crt_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자사업자번호',
  `crma_rs_or_crpno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약주주민/법인번호',
  `clm_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고대상구분코드',
  `clmps_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고자사업자번호',
  `clmps_rs_or_crpno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고자주민/법인번호',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chr_admr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자기관코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `t_pibam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '총지급보험금액',
  `thcp_py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사지급보험금액',
  `t_py_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총지급준비금액',
  `thcp_py_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사지급준비금액',
  `t_ibnf_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총보험금환입금액',
  `thcp_ibnf_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사보험금환입금액',
  `t_nvcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총조사비용',
  `thcp_nvcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사조사비용',
  `t_nvcs_rfamt` decimal(15,0) DEFAULT '0' COMMENT '총조사비용준비금액',
  `thcp_nvcs_rfamt` decimal(15,0) DEFAULT '0' COMMENT '당사조사비용준비금액',
  `xi_py_flg_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분사유코드',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터소스구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cmins_clm_cvr_cls_00` (`cls_yymm`,`rn_rtro_cr_flgcd`,`rertr_flgcd`,`cls_bjno`,`ibnf_cs_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=10600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험사고담보마감';
