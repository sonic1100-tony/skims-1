--
-- Table structure for table `ccm_insce_sjtdn_dhaf_adm`
--

DROP TABLE IF EXISTS `ccm_insce_sjtdn_dhaf_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_insce_sjtdn_dhaf_adm` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dhaf_adm_seqno` decimal(3,0) NOT NULL COMMENT '사후관리순번',
  `spcn_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '혐의대상구분코드',
  `spcn_bjnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '혐의대상명',
  `spcn_bj_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혐의대상주민번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `nv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '조사년도',
  `asso_no_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '협회번호년도',
  `asso_no_sno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '협회번호일련번호',
  `detc_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사기관명',
  `mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사코드',
  `siu_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU조사유형코드',
  `adm_chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리담당기관코드',
  `adm_chrtm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리담당팀기관코드',
  `nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험차량번호',
  `imu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책유형코드',
  `ins_crme_sjtdn_amt` decimal(15,0) DEFAULT '0' COMMENT '보험범죄적발금액',
  `idm_amt` decimal(15,0) DEFAULT '0' COMMENT '구상금액',
  `rcamt` decimal(15,0) DEFAULT '0' COMMENT '환수금액',
  `idm_amt_tblam` decimal(15,0) DEFAULT '0' COMMENT '구상금잔액',
  `osamt` decimal(15,0) DEFAULT '0' COMMENT '공탁금액',
  `detc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사결과코드',
  `sdpst_acd_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송치사건년도',
  `sdpst_acdno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송치사건번호',
  `crmcs_jstno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '형사재판번호',
  `just_prg_crscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재판진행과정코드',
  `chr_acd_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당사건법원코드',
  `ag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '합의여부',
  `acdno_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호법원코드',
  `acdno_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호접수년도',
  `acdno_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호분류코드',
  `acdno_seqno` decimal(7,0) DEFAULT NULL COMMENT '사건번호순번',
  `just_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재판결과코드',
  `just_rst_mntct` decimal(10,0) DEFAULT NULL COMMENT '재판결과개월수',
  `just_rst_days` decimal(10,0) DEFAULT NULL COMMENT '재판결과일수',
  `rulng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판결문여부',
  `spcn_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '혐의내용',
  `rgt_dthms` datetime NOT NULL COMMENT '등록일시',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록자직원번호',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`dhaf_adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험범죄적발사후관리';
