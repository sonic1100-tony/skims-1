--
-- Table structure for table `aud_bnc_rtx_apldo_seqc`
--

DROP TABLE IF EXISTS `aud_bnc_rtx_apldo_seqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_bnc_rtx_apldo_seqc` (
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtx_ss_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증발행년도',
  `rtx_bk_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증책일련번호',
  `ss_ct` decimal(3,0) DEFAULT NULL COMMENT '발행횟수',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `prm` decimal(17,2) DEFAULT NULL COMMENT '보험료',
  `adm_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리지점기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `o1_seqc_dt` date DEFAULT NULL COMMENT '1차채번일자',
  `o1_seqc_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차채번시간',
  `o1_ss_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차발행직원번호',
  `o2_seqc_dt` date DEFAULT NULL COMMENT '2차채번일자',
  `o2_seqc_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차채번시간',
  `o2_ss_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차발행직원번호',
  `o3_seqc_dt` date DEFAULT NULL COMMENT '3차채번일자',
  `o3_seqc_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차채번시간',
  `o3_ss_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차발행직원번호',
  `rtx_mfg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증출고여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtx_kndcd`,`rtx_ss_yr`,`rtx_bk_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='방카영수증청약서채번';
