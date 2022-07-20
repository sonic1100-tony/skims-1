--
-- Table structure for table `lse_lsetm_dv_tp`
--

DROP TABLE IF EXISTS `lse_lsetm_dv_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_dv_tp` (
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `dv_tpcl_dfwk_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당유형별난이도등급코드',
  `dv_tp_prio_rank` decimal(5,0) NOT NULL COMMENT '배당유형우선순위',
  `hprm_requ_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM의뢰대상여부',
  `lsetm_dt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사세부업무구분코드',
  `lsetm_dv_tp_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사배당유형설명',
  `dv_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당유형구분코드',
  `ud_cnd_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사조건대상여부',
  `relx_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '완화제외여부',
  `smat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반자동여부',
  `dv_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당제외여부',
  `are_dv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역배당여부',
  `psn_dv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인배당여부',
  `sct_1_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구간1적용여부',
  `sct_2_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구간2적용여부',
  `sct_3_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구간3적용여부',
  `sct_4_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구간4적용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lsetm_dv_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사배당유형';
