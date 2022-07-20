--
-- Table structure for table `cus_fatca_ctm`
--

DROP TABLE IF EXISTS `cus_fatca_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fatca_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `scan_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔문서번호',
  `scan_dt` date DEFAULT NULL COMMENT '스캔일자',
  `eng_name_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문이름명',
  `eng_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문성명',
  `fatca_ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FATCA국가코드',
  `fatca_npp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FATCA국민유형코드',
  `fatca_ntn_crp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FATCA국가법인여부',
  `fn_cmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융회사여부',
  `inatv_nfnc_crp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비능동비금융법인여부',
  `atv_nfnc_crp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '능동비금융법인분류코드',
  `rl_ruler_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제지배자여부',
  `spcf_amcpp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특정미국인여부',
  `pytx_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납세등록번호',
  `amcpp_crp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미국인법인분류코드',
  `fnd_ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설립국가명',
  `glbal_fnorg_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '글로벌금융기관등록번호',
  `exec_rgd_xmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이행간주면제여부',
  `glbal_fnorg_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '글로벌금융기관분류코드',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `eng_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문주소',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널시스템구분코드',
  `fatca_rprt_wrt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FATCA신고서작성여부',
  `oecd_ovse_rsdt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OECD해외거주자유형코드',
  `nw_dat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신데이터여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fatca_ctm_00` (`ctmno`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FATCA고객';
