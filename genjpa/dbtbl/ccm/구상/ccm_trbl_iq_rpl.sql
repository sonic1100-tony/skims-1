--
-- Table structure for table `ccm_trbl_iq_rpl`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_rpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_rpl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `cdm_man_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인접수번호',
  `cdm_man_depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인부서명',
  `cdm_man_tmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인팀명',
  `cdm_man_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인담당자명',
  `cdm_man_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인연락처',
  `cdm_man_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구인차량번호',
  `cdm_man_appr_rt` decimal(3,0) DEFAULT NULL COMMENT '피청구인인정비율',
  `cdm_man_appr_amt` decimal(15,0) DEFAULT NULL COMMENT '피청구인인정금액',
  `asr_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신작성자명',
  `asr_wrt_dthms` datetime DEFAULT NULL COMMENT '회신작성일시',
  `asr_chps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신변경자명',
  `asr_ch_dthms` datetime DEFAULT NULL COMMENT '회신변경일시',
  `asr_retn_ps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신반려자명',
  `asr_retn_dthms` datetime DEFAULT NULL COMMENT '회신반려일시',
  `retn_rs_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유내용',
  `retn_ps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려자구분코드',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `rpl_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변상태구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_rpl_00` (`trbl_iq_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의답변';
