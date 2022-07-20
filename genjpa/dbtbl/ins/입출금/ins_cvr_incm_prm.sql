--
-- Table structure for table `ins_cvr_incm_prm`
--

DROP TABLE IF EXISTS `ins_cvr_incm_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cvr_incm_prm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cvr_pym_seq` decimal(5,0) NOT NULL COMMENT '담보납입회차',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cr_cvr_ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보배서번호',
  `cvr_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보납입년월',
  `ba_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기본보험료',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `rp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영수보험료',
  `nwfsq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신초차구분코드',
  `cvr_st_st_seq` decimal(5,0) DEFAULT NULL COMMENT '담보시기기준회차',
  `cvr_st_nwfsq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보시기신초차구분코드',
  `ppy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선납여부',
  `ppy_dc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선납할인여부',
  `pym_dudt` date DEFAULT NULL COMMENT '납입응당일자',
  `vald_stdt` date DEFAULT NULL COMMENT '유효시기일자',
  `vald_clsdt` date DEFAULT NULL COMMENT '유효종기일자',
  `trt_ap_cvr_prmsm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '특약적용담보보험료합계',
  `ps_ndstn_shamt` decimal(17,5) NOT NULL DEFAULT '0.00000' COMMENT '보유불분명분담금액',
  `xwpy_prm_nt` decimal(15,0) DEFAULT NULL COMMENT '과오납보험료이자',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보기본특약구분코드',
  `trt_ap_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약적용담보코드',
  `cvr_spqu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성구분코드',
  `stdbd_ba_prm` decimal(15,0) DEFAULT '0' COMMENT '표준체기본보험료',
  `stdbd_ap_prm` decimal(15,0) DEFAULT '0' COMMENT '표준체적용보험료',
  `stdbd_rp_prm` decimal(15,0) DEFAULT '0' COMMENT '표준체영수보험료',
  `sustd_ba_prm` decimal(15,0) DEFAULT '0' COMMENT '표준하체기본보험료',
  `sustd_ap_prm` decimal(15,0) DEFAULT '0' COMMENT '표준하체적용보험료',
  `sustd_rp_prm` decimal(15,0) DEFAULT '0' COMMENT '표준하체영수보험료',
  `sb_prm` decimal(15,0) DEFAULT NULL COMMENT '대체보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cvr_incm_prm_00` (`plyno`,`incm_prm_cr_seqno`,`cvrcd`,`cvr_seqno`,`cvr_pym_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=238471 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보수입보험료';
