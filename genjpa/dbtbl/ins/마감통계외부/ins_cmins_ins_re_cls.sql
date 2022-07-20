--
-- Table structure for table `ins_cmins_ins_re_cls`
--

DROP TABLE IF EXISTS `ins_cmins_ins_re_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_ins_re_cls` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리번호',
  `pstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경유처코드',
  `rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자코드',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `thcp_qtrt` decimal(12,6) NOT NULL COMMENT '당사지분율',
  `avg_rert` decimal(12,6) NOT NULL COMMENT '평균출재율',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chr_admr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자기관코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `t_re_ibnf` decimal(17,2) NOT NULL COMMENT '총출재보험금',
  `thcp_re_ibamt` decimal(15,0) NOT NULL COMMENT '당사출재보험금액',
  `t_re_ibnf_rtamt` decimal(15,0) NOT NULL COMMENT '총출재보험금환급금액',
  `thcp_re_ibnf_rtamt` decimal(15,0) NOT NULL COMMENT '당사출재보험금환급금액',
  `t_re_py_rfamt` decimal(15,0) NOT NULL COMMENT '총출재지급준비금액',
  `thcp_re_py_rfamt` decimal(15,0) NOT NULL COMMENT '당사출재지급준비금액',
  `t_re_nvcs` decimal(15,0) NOT NULL COMMENT '총출재조사비용',
  `thcp_re_nvcs` decimal(15,0) NOT NULL COMMENT '당사출재조사비용',
  `t_re_nvcs_rfamt` decimal(15,0) NOT NULL COMMENT '총출재조사비용준비금액',
  `thcp_re_nvcs_rfamt` decimal(15,0) NOT NULL COMMENT '당사출재조사비용준비금액',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터소스구분코드',
  `re_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재특약구분코드',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cmins_ins_re_cls_00` (`cls_yymm`,`rn_rtro_cr_flgcd`,`cls_bjno`,`re_dlno`,`pstcd`,`rincd`)
) ENGINE=InnoDB AUTO_INCREMENT=10660 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험사고출재마감';
