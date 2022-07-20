--
-- Table structure for table `ccm_prv_prg`
--

DROP TABLE IF EXISTS `ccm_prv_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prv_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `prv_dcu_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '결재문서년도',
  `prv_dcu_seqno` decimal(10,0) NOT NULL COMMENT '결재문서순번',
  `prv_dcu_unt_ordr` decimal(10,0) NOT NULL COMMENT '결재문서단위순차',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prvmn_lvl` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자레벨',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_ap_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재승인종류코드',
  `prv_rjct_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재부결사유',
  `prvmn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자구분코드',
  `rl_prvmn_ip_adr` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '실결재자IP주소',
  `rl_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실결재자직원번호',
  `afprv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후결여부',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `inp_er_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력오류여부',
  `cal_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계산착오여부',
  `clc_xcs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산정과다여부',
  `imus_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면부책여부',
  `mn_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐에러여부',
  `info_inp_omit_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보입력누락여부',
  `dcu_cpmt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류보완여부',
  `et_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타여부',
  `smpl_rt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단순반송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prv_prg_00` (`stfno`,`prv_dcu_yr`,`prv_dcu_seqno`,`prv_dcu_unt_ordr`,`prv_seqno`),
  KEY `idx_ccm_prv_prg_10` (`prv_dcu_yr`,`prv_dcu_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1840 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재진행';
