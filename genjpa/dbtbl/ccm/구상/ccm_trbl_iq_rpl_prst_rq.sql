--
-- Table structure for table `ccm_trbl_iq_rpl_prst_rq`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_rpl_prst_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_rpl_prst_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `rpl_prst_rqsno` decimal(3,0) NOT NULL COMMENT '답변제출요청순번',
  `thcp_flt_asrt_thcp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '당사과실주장당사과실율',
  `thcp_flt_asrt_otcm_fltrt` decimal(3,0) DEFAULT NULL COMMENT '당사과실주장타사과실율',
  `otcm_flt_asrt_thcp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '타사과실주장당사과실율',
  `otcm_flt_asrt_otcm_fltrt` decimal(3,0) DEFAULT NULL COMMENT '타사과실주장타사과실율',
  `flt_chr_no` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실도표번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `rpl_prst_reqdt` date DEFAULT NULL COMMENT '답변제출요청일자',
  `rpl_prst_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변제출요청기관코드',
  `rpl_prst_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변제출요청직원번호',
  `rpl_prst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변제출기관코드',
  `rpl_prst_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변제출직원번호',
  `rpl_prsdt` date DEFAULT NULL COMMENT '답변제출일자',
  `rpl_prst_rq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변제출요청상태코드',
  `retn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_rpl_prst_rq_00` (`trbl_iq_rcpno`,`rpl_prst_rqsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의답변제출요청';
