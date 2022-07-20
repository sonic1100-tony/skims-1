--
-- Table structure for table `lse_cvap_xp_rprdm`
--

DROP TABLE IF EXISTS `lse_cvap_xp_rprdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cvap_xp_rprdm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `cvap_xp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원예상유형코드',
  `clm_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `hsp_st` date DEFAULT NULL COMMENT '입원시기',
  `hsp_clstr` date DEFAULT NULL COMMENT '입원종기',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `otp_st` date DEFAULT NULL COMMENT '통원시기',
  `otp_clstr` date DEFAULT NULL COMMENT '통원종기',
  `otp_days` decimal(5,0) DEFAULT NULL COMMENT '통원일수',
  `cvap_emamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '민원청구금액',
  `cvap_clcam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '민원산정금액',
  `cvap_tlamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '민원분쟁금액',
  `dm_ref_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구참고사항',
  `clc_ref_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산정참고사항',
  `trbl_ref_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁참고사항',
  `cvap_pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원특이사항',
  `cvap_xmn_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원검토사항',
  `cvap_dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원처리의견',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `end_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '종결여부',
  `enddt` date DEFAULT NULL COMMENT '종결일자',
  `mng_rst_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치결과사항',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cvap_xp_rprdm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원예상통보서';
