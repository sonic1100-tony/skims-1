--
-- Table structure for table `b1_210927_str_py_ibamt_cls`
--

DROP TABLE IF EXISTS `b1_210927_str_py_ibamt_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_210927_str_py_ibamt_cls` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약세부상태코드',
  `fnl_cr_st_chdt` date DEFAULT NULL COMMENT '최종계약상태변경일자',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `nanum_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '나눔특약여부',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `idm_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상사고담보코드',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입환수구분코드',
  `py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급보험금액',
  `bzcs_dv_clmct` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '사업비배분사고건수',
  `bzcs_dv_pyct` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '사업비배분지급건수',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급보험금액마감';
