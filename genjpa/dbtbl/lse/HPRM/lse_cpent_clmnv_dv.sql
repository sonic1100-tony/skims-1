--
-- Table structure for table `lse_cpent_clmnv_dv`
--

DROP TABLE IF EXISTS `lse_cpent_clmnv_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_clmnv_dv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `dv_dthms` datetime NOT NULL COMMENT '배당일시',
  `dv_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당처리구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `cpent_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체배당구분코드',
  `hprm_nv_requ_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'HPRM조사의뢰구분코드',
  `clmnv_cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사보상센터기관코드',
  `clmnv_cpent_vl_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사협력업체평가등급코드',
  `clmnv_dvmrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '사고조사배당율',
  `thcp_rgt_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '당사등록기관코드',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자직원번호',
  `requ_org_seqno` decimal(3,0) DEFAULT NULL COMMENT '의뢰기관순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_clmnv_dv_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_nv_seqno`,`dm_seqno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체사고조사배당';
