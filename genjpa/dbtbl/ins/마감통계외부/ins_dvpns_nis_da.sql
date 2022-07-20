--
-- Table structure for table `ins_dvpns_nis_da`
--

DROP TABLE IF EXISTS `ins_dvpns_nis_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_nis_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_wrtdt` date NOT NULL COMMENT '자료작성일자',
  `admno` decimal(6,0) NOT NULL COMMENT '관리번호',
  `cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보구분코드',
  `cr_chsno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대번호구분코드',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호구분코드',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `nd_is_rpr_cmp` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기가입통보회사',
  `nd_ins_strdt` date DEFAULT NULL COMMENT '만기보험시작일자',
  `nd_ins_nddt` date DEFAULT NULL COMMENT '만기보험종료일자',
  `rnw_is_rpr_cmp` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신가입통보회사',
  `rnw_ins_strdt` date DEFAULT NULL COMMENT '갱신보험시작일자',
  `rnw_ins_nddt` date DEFAULT NULL COMMENT '갱신보험종료일자',
  `nis_days` decimal(5,0) DEFAULT NULL COMMENT '미가입일수',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `nrdps_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주소',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `nis_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미가입원인코드',
  `thcp_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사증권번호',
  `da_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료유형코드',
  `dty_ins_npy_seq` decimal(3,0) DEFAULT NULL COMMENT '의무보험미납회차',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보종코드',
  `cr_yr` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약년도',
  `dvpns_crano` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원계약번호',
  `hngl_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글차량번호',
  `nis_dcn_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미가입확정사유코드',
  `carno_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호등록여부',
  `cr_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_nis_da_00` (`da_wrtdt`,`admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원미가입자료';
