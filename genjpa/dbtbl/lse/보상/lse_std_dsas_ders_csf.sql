--
-- Table structure for table `lse_std_dsas_ders_csf`
--

DROP TABLE IF EXISTS `lse_std_dsas_ders_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_std_dsas_ders_csf` (
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dgn_ennm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단영문명',
  `csf_lvl` decimal(1,0) DEFAULT NULL COMMENT '분류레벨',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종레벨여부',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `ppr_dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위진단코드',
  `kcd_lclcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KCD대분류코드',
  `kcd_larg_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KCD대분류코드명',
  `kcd_mdccd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KCD중분류코드',
  `kcd_durn_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KCD중분류코드명',
  `hira_scwnd_csfcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원상병분류코드',
  `hira_scwnd_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원상병분류코드명',
  `udw_scwnd_cd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '언더라이팅상병코드',
  `udw_scwnd_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '언더라이팅상병코드명',
  `udw_scwnd_csfcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '언더라이팅상병분류코드',
  `udw_scwnd_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '언더라이팅상병분류코드명',
  `kko_scwnd_lclcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병대분류코드',
  `kko_scwnd_larg_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병대분류코드명',
  `kko_scwnd_mdccd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병중분류코드',
  `kko_scwnd_durn_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병중분류코드명',
  `kko_scwnd_smccd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병소분류코드',
  `kko_scwnd_sml_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오상병소분류코드명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dgncd`,`dgncd_sno`,`ap_nddt`,`ap_strdt`),
  KEY `idx_lse_std_dsas_ders_csf_10` (`ppr_dgncd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='표준질병사인분류';
