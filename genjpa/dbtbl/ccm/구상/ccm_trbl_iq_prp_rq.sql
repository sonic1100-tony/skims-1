--
-- Table structure for table `ccm_trbl_iq_prp_rq`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_prp_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_prp_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cdm_man_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피청구인회사코드',
  `trbl_iq_prp_rqsno` decimal(3,0) NOT NULL COMMENT '분쟁심의제기요청순번',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상접수일련번호',
  `cdm_man_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인접수번호',
  `cdm_man_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인차량번호',
  `cdm_man_tmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인팀명',
  `cdm_man_depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인부서명',
  `cdm_man_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인담당자명',
  `cdm_man_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인연락처',
  `thcp_flt_asrt_thcp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '당사과실주장당사과실율',
  `thcp_flt_asrt_otcm_fltrt` decimal(3,0) DEFAULT NULL COMMENT '당사과실주장타사과실율',
  `otcm_flt_asrt_thcp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '타사과실주장당사과실율',
  `otcm_flt_asrt_otcm_fltrt` decimal(3,0) DEFAULT NULL COMMENT '타사과실주장타사과실율',
  `flt_chr_no` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실도표번호',
  `t_py_ibnf` decimal(15,0) DEFAULT NULL COMMENT '총지급보험금',
  `self_chamt` decimal(15,0) DEFAULT NULL COMMENT '자기부담금액',
  `note_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고내용',
  `trbl_iq_prp_reqdt` date DEFAULT NULL COMMENT '분쟁심의제기요청일자',
  `trbl_iq_prp_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의제기요청기관코드',
  `trbl_iq_prp_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의제기요청직원번호',
  `trbl_iq_prp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의제기기관코드',
  `trbl_iq_prp_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의제기담당직원번호',
  `trbl_iq_prpdt` date DEFAULT NULL COMMENT '분쟁심의제기일자',
  `trbl_iq_prp_rq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의제기요청상태코드',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의접수번호',
  `retn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_prp_rq_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`cdm_man_cmpcd`,`trbl_iq_prp_rqsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의제기요청';
