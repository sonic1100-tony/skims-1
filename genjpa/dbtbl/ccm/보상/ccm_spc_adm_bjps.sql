--
-- Table structure for table `ccm_spc_adm_bjps`
--

DROP TABLE IF EXISTS `ccm_spc_adm_bjps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_spc_adm_bjps` (
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `utatp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자유형코드',
  `adm_bj_ap_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리대상적용사유',
  `ltrm_udrtk_atps_rgtno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기인수유의자등록번호',
  `spcn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혐의구분코드',
  `siu_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU조사유형코드',
  `spc_adm_ikd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별관리보종구분코드',
  `chmcp_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주간사회사코드',
  `asso_no_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회번호년도',
  `asso_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회일련번호',
  `spc_adm_swdl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별관리사기유형코드',
  `ins_crme_sjtdn_amt` decimal(15,0) DEFAULT NULL COMMENT '보험범죄적발금액',
  `sjddt` date DEFAULT NULL COMMENT '적발일자',
  `rcv_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수대상여부',
  `clm_cmlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고형제번호',
  `fp_stf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FP직원유무',
  `detc_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사기관명',
  `detc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사결과코드',
  `just_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재판결과코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `detc_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사종류코드',
  `acdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건명',
  `idm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상여부',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rsno`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별관리대상자';
