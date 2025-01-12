--
-- Table structure for table `ccm_dm`
--

DROP TABLE IF EXISTS `ccm_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `mdcf_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '치료비처리상태코드',
  `emamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액합계',
  `dm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청구구분코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `dm_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '청구고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `aos_spc_seqno` decimal(3,0) DEFAULT NULL COMMENT 'AOS내역순번',
  `dma_foma_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국산외산구분코드',
  `dm_as_trst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정위탁여부',
  `acsam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부품금액',
  `rpair_st` date DEFAULT NULL COMMENT '수리시기',
  `rpair_clstr` date DEFAULT NULL COMMENT '수리종기',
  `dm_rpair_days` decimal(5,0) DEFAULT NULL COMMENT '청구수리일수',
  `appr_rpair_days` decimal(5,0) DEFAULT NULL COMMENT '인정수리일수',
  `rpair_plac_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리처고객번호',
  `rpair_plac_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '수리처협력업체순번',
  `rpcrg_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리비유형코드',
  `ibamt_py_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금액지급유형코드',
  `hsp_grd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원등급구분코드',
  `adrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '가산율',
  `mdcf_mdch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료비수가구분코드',
  `trmt_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료결과코드',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `mdcf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료비유형코드',
  `mm_emamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약재료청구금액합계',
  `ctc_emamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료청구금액합계',
  `ctc_dm_adamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료청구가산금액합계',
  `hsp_st` date DEFAULT NULL COMMENT '입원시기',
  `hsp_clstr` date DEFAULT NULL COMMENT '입원종기',
  `dm_hsp_days` decimal(5,0) DEFAULT NULL COMMENT '청구입원일수',
  `appr_hsp_days` decimal(5,0) DEFAULT NULL COMMENT '인정입원일수',
  `otp_st` date DEFAULT NULL COMMENT '통원시기',
  `otp_clstr` date DEFAULT NULL COMMENT '통원종기',
  `dm_otp_days` decimal(5,0) DEFAULT NULL COMMENT '청구통원일수',
  `appr_otp_days` decimal(5,0) DEFAULT NULL COMMENT '인정통원일수',
  `pt80_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '80퍼센트지급여부',
  `edi_dm_spc_seqno` decimal(3,0) DEFAULT NULL COMMENT 'EDI청구내역순번',
  `hsp_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원기관코드',
  `dmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구번호',
  `dm_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구평가코드',
  `bsns_spprt_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무협조평가코드',
  `vl_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청구';
